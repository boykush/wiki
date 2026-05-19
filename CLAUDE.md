# CLAUDE.md

このリポジトリで作業する際のガイダンス。Codex 等の他エージェントと共有する内容は [AGENTS.md](AGENTS.md) と同期する。

## アーキテクチャ

- **Scraps**（Rust 製の静的サイトジェネレーター）で構築する個人ウィキ。利用方法は公式 Doc: <https://boykush.github.io/scraps/>
- `/scraps/` が wiki root（`.scraps.toml` と Markdown を配置）、`/scraps/_site/` はビルド出力で gitignore

## LLM Wiki としての運用思想

Andrej Karpathy の [LLM Wiki](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f) に沿って、その場限りの retrieval ではなく永続的・構造化された wiki を LLM が能動的に育てる運用とする。ingest 時点で要約・クロスリンク更新・健全性チェックまで完了させ、bookkeeping を LLM 側に寄せる。

### 3 層アーキテクチャ

| 層 | 対応 | 役割 |
| --- | --- | --- |
| Raw sources | 外部 URL / 書籍 / 論文。intake は GitHub Issue / RSS / ローカル `/ingest` の 3 経路 | 不変の一次情報。LLM は読むが書き換えない |
| The Wiki | `/scraps/*.md` | LLM が生成・保守する markdown。wiki-link / tag / backlink で相互参照 |
| The Schema | `CLAUDE.md` / `AGENTS.md` | 運用規約（このファイル自身） |

### 中核オペレーション

`index.md` / `log.md` ではなく **Scraps CLI** が wiki-link / tag / backlink を構造化データとして扱うため、明示的なインデックスファイルは置かない。

| op | ツール |
| --- | --- |
| Ingest | `/ingest <source>` skill（`scraps` プラグイン配布） |
| Query | `/query <question>` skill |
| Lint | `scraps lint` CLI / `scraps:lint-rule-handler` agent |

## 開発コマンド

[mise](https://mise.jdx.dev/) でツール／タスクを管理する。タスク一覧は `mise tasks`、未登録の Scraps コマンドは `mise exec -- scraps ...` で実行（`SCRAPS_DIRECTORY=scraps` 設定済みのため `-C` は不要）。

## scraps ファイル参照ルール

`/scraps/` 配下を読む際は `grep` / `find` / `cat` / `head` を**使わず**、必ず `scraps` CLI 経由でクエリする（wiki-link / tag / backlink を構造化データとして扱え、`--json` でコンテキストも節約できるため）。コマンド一覧は公式 Doc <https://boykush.github.io/scraps/> を参照。ctx で曖昧性が出る場合は `--ctx <ctx>` で絞り込む。

例外: 対象が既に特定できており機械的な一括編集を行う場合のみ Read / Edit / Write を直接使ってよい。**「どこかにある何か」を探す grep は禁止** — `scraps search` を使う。

## Scrap 記述形式

- **必ず `/ingest` skill 経由で作成**。関連 scrap を `/query` で確認してから ingest する流れも可
- **リンクの向き**: 具体→抽象、実装→概念の片方向（例: 書籍→概念 OK、概念→書籍 NG）
- **タグにエイリアス不可**: v1 のタグは discriminator。`#[[Tag|alias]]` 形式は scrap link 専用
- **本文構成**: 略語があれば冒頭 h2 (`## XYZ`)、続いてタグ行 (`#[[A]] #[[B]]`)、本文（概要 1–2 文＋箇条書き、関連は wiki-link、外部 URL は autolink）。詳細形式と例は公式 Doc 参照
