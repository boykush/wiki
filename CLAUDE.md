# CLAUDE.md

このファイルは、Claude Code (claude.ai/code) がこのリポジトリで作業する際のガイダンスを提供します。

## アーキテクチャ概要

これは**Scraps**で構築された個人用ウィキです。Scrapsは、ナレッジマネジメント用に設計されたRustベースの静的サイトジェネレーターです。このシステムは、Markdownファイルをウィキスタイルのリンク、タグ組織、および自動GitHub Pagesデプロイを備えた検索可能なウィキに変換します。

Scrapsの詳細な利用方法については <https://boykush.github.io/scraps/> を参照してください。

ディレクトリ構成：

- `/scraps/` - Markdownファイル（コンテンツ）
- `/templates/` - Scrapsテンプレートファイル
- `/public/` - ビルド出力（静的HTML）
- `Config.toml` - サイト設定

## 一般的な開発コマンド

このプロジェクトでは[mise](https://mise.jdx.dev/)を使用してタスクとツールを管理しています。

### 利用可能なタスク

```bash
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

mise tasksに含まれていないScrapsコマンドは、`mise exec`経由で実行します：

```bash
# 例：ウィキ内のタグ一覧表示
mise exec -- scraps tag

# 例：テンプレートから対話式でファイル生成
mise exec -- scraps template
```

## コンテンツ作成

### テンプレートシステム

Scrapsには構造化コンテンツ作成のためのテンプレートシステムがあります。

利用可能なテンプレートを確認するには、以下のコマンドを実行してください：

```bash
mise exec -- scraps template list
```

### デフォルトのScrap記述形式

#### 重要事項

- **必ず`scraps-writer`スキルを使用すること**
  - 基本: `/scraps-writer`
  - 行数指定: `/scraps-writer max-lines=10`（デフォルト: 10行）
- **リンク依存関係の向き**: 具体→抽象、実装→概念・定義の片方向とする
  - 例: 書籍（`#[[Book]]`）から概念へリンク（OK）、概念から書籍へリンク（NG）

#### 記述形式

テンプレートを使用しない場合は、以下の記述形式に従ってください。

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
