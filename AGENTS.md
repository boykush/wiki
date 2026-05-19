# AGENTS.md

このファイルは、Codex (Codex.ai/code) がこのリポジトリで作業する際のガイダンスを提供します。

## アーキテクチャ概要

これは**Scraps**で構築された個人用ウィキです。Scrapsは、ナレッジマネジメント用に設計されたRustベースの静的サイトジェネレーターです。このシステムは、Markdownファイルをウィキスタイルのリンク、タグ組織、および自動GitHub Pagesデプロイを備えた検索可能なウィキに変換します。

Scrapsの詳細な利用方法については <https://boykush.github.io/scraps/> を参照してください。

ディレクトリ構成（v1）：

- `/scraps/` - wiki root。Markdownファイル（コンテンツ）と `.scraps.toml` を配置
- `/scraps/.scraps.toml` - サイト設定（v1: ファイルが存在するディレクトリが wiki root）
- `/scraps/_site/` - ビルド出力（静的HTML、gitignore）

## LLM Wiki としての運用思想

このリポジトリは Andrej Karpathy が提唱する **LLM Wiki** の考え方に沿って運用する。LLM がその場限りの retrieval を繰り返すのではなく、永続的・構造化された wiki を能動的に育て、知識を累積させる。ingest 時点で要約・クロスリンク更新・健全性チェックまでを完了させ、保守の bookkeeping コストを LLM 側に寄せる。

参考: <https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f>

### 3 層アーキテクチャ

| 層 | このリポジトリでの対応 | 役割 |
| --- | --- | --- |
| Raw sources | 外部 URL / 書籍 / 論文（autolink で参照） | 不変の一次情報。LLM は読むが書き換えない |
| The Wiki | `/scraps/*.md` | LLM が生成・保守する markdown。wiki-link / tag / backlink で相互参照 |
| The Schema | `CLAUDE.md` / `AGENTS.md` | 運用規約・記述形式・ワークフロー（このファイル自身） |

### 中核オペレーションと使用ツール

オリジナルの LLM Wiki では `index.md` / `log.md` がナビゲーションを担うが、このリポジトリでは **Scraps CLI** が wiki-link / tag / backlink を構造化データとして扱えるため、明示的なインデックスファイルは置かない。

| オペレーション | 使用するもの | 概要 |
| --- | --- | --- |
| Ingest | `/ingest` skill（`scraps` プラグイン配布） | 新しいソースを取り込み、scrap を作成し、関連 scrap のクロスリンクを更新する |
| Query | `/query` skill（`scraps` プラグイン配布） | 関連 scrap を横断検索・統合して回答する。価値ある回答は `/ingest` で wiki に戻せる |
| Lint | `scraps lint` CLI ／ `scraps:lint-rule-handler` agent | 孤立 scrap・古い記述・欠落クロスリンク等を検出し、必要に応じ自動修正する |

CLI コマンドの詳細は後述の「scrapsファイル参照ルール」を参照。

## ワークフロー

- **ローカル作業は `main` 上で行う**: Codex等のローカル環境では新しいブランチを切らず、`main` 上で直接コミット・pushする
- コミット後はそのまま `git push` で `origin/main` に反映する
- ※ Codex GitHub Actionsなどリモート実行時は別ブランチ＋PR運用となるため対象外

## 一般的な開発コマンド

このプロジェクトでは[mise](https://mise.jdx.dev/)を使用してタスクとツールを管理しています。

### 利用可能なタスク

```bash
# 初回セットアップ（ツールのインストール）
mise install

# タスク一覧の確認
mise tasks

# 静的サイトのビルド
mise run build

# ローカルでプレビュー配信
mise run serve

# Markdownファイルのlint
mise run lint

# Markdownファイルのlint（自動修正）
mise run lint-fix
```

### mise tasksに含まれていないコマンド

mise tasksに含まれていないScrapsコマンドは、`mise exec` 経由で実行します。`mise.toml` で `SCRAPS_DIRECTORY` を `scraps/` に指定済みのため、`-C scraps` の指定は不要です：

```bash
# 例：ウィキ内のタグ一覧表示
mise exec -- scraps tag list

# 例：lint 実行
mise exec -- scraps lint
```

v1 で `scraps template` は廃止されました（テンプレート＋frontmatter は v1 で削除）。

## scrapsファイル参照ルール

`/scraps/` 配下のMarkdownファイルの内容にアクセスする際は、`grep` / `find` / `cat` / `head` 等のシェルコマンドで直接読まず、**必ず `scraps` CLI 経由でクエリする**こと。

理由: Scrapsはwiki-link / tag / backlink を構造化データとして扱う。CLI経由で取得することで構造（見出し・リンク・タグ）を保ったまま必要な部分だけを取得でき、関連scrapも追跡できる。`--json` のフィールド射影でコンテキストも節約できる。

| 目的 | コマンド例 |
| --- | --- |
| 本文を取得 | `mise exec -- scraps get "<title>" --json title,body` |
| 見出し構造だけ取得 | `mise exec -- scraps get "<title>" --json title,headings` |
| 特定見出しの内容 | `mise exec -- scraps get "<title>" --heading "<heading>" --json body` |
| outboundリンク一覧 | `mise exec -- scraps links "<title>" --json` |
| backlink一覧 | `mise exec -- scraps backlinks "<title>" --json` |
| キーワード検索 | `mise exec -- scraps search "<query>" --json` |
| タグの被参照 | `mise exec -- scraps tag backlinks "<tag>" --json` |
| タグ一覧 | `mise exec -- scraps tag list --json` |
| lint違反 | `mise exec -- scraps lint -r <rule>` |

ctx (`Kubernetes/Pod` 等) で曖昧性が出る場合は `--ctx <ctx>` で絞り込む。

例外: scraps CLI で対象ファイル群が既に特定できており、機械的な一括編集を行う場合のみ Read / Edit / Write を直接使ってよい。**「scraps内のどこかにある何か」を探すための grep は禁止** — `scraps search` を使う。

## コンテンツ作成

### デフォルトのScrap記述形式

#### 重要事項

- **必ず`scraps`プラグインの `/ingest` スキルを使用すること**
  - 基本: `/ingest <ソース>`（プロンプト・URL・markdown いずれも可）
  - 関連scrapを `/query` で検索してから `/ingest` で取り込む流れも可能
- **リンク依存関係の向き**: 具体→抽象、実装→概念・定義の片方向とする
  - 例: 書籍（`#[[Book]]`）から概念へリンク（OK）、概念から書籍へリンク（NG）
- **タグにエイリアスは付けない**: v1 ではタグはdiscriminatorで、`#[[Tag|alias]]` 形式は不可。エイリアスは scrap link 専用。

#### 記述形式

1. **エイリアス（略語）**: 略語がある場合は、ファイル冒頭にh2見出しで記述

   ```markdown
   ## PSA
   ```

2. **タグ**: エイリアス見出しの直後（エイリアスがない場合はファイル冒頭）に、半角スペース区切りで記述

   ```markdown
   #[[Security]] #[[Kubernetes]]
   ```

3. **本文**: 簡潔な説明（max-lines指定行数以内）
   - 概要を1-2文で記述
   - 箇条書きで要点を整理
   - ウィキリンク記法で関連項目を参照
   - 詳細な情報はリンク先に委ねる

4. **外部リンク**: autolink記法（`<URL>`）で記載

**記述例**:

```markdown
## PSA

#[[Security]] #[[Kubernetes]]

[[Kubernetes/Pod Security Standards]]を違反する可能性がある際のアクションを実行する

アクションは以下の3つ

- Warn
- Audit
- Enforce

<https://kubernetes.io/docs/concepts/security/pod-security-admission/>
```
