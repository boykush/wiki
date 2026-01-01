# CLAUDE.md

このファイルは、Claude Code (claude.ai/code) がこのリポジトリで作業する際のガイダンスを提供します。

## アーキテクチャ概要

これは**Scraps**で構築された個人用ウィキです。Scrapsは、ナレッジマネジメント用に設計されたRustベースの静的サイトジェネレーターです。このシステムは、Markdownファイルをウィキスタイルのリンク、タグ組織、および自動GitHub Pagesデプロイを備えた検索可能なウィキに変換します。

Scrapsの詳細な利用方法については <https://boykush.github.io/scraps/> を参照してください。

主要なアーキテクチャコンポーネント：

- **コンテンツ**: `/docs/`ディレクトリ内のMarkdownファイル（384+ファイル）
- **設定**: サイト設定とビルドオプションを含む`Config.toml`
- **出力**: `/public/`ディレクトリに生成される静的HTML
- **デプロイ**: GitHub ActionsによるGitHub Pagesへの自動デプロイ
- **言語**: 主に日本語コンテンツ（`lang_code = "ja"`）

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

Markdownファイルの作成・編集時には、Scrapsの記法を理解した専門エージェントを使用してください。

**重要な制約**:

- **各Markdownファイルは10行以内の簡潔な概要説明に収める**
- ウィキリンク記法（通常リンク、エイリアスリンク、コンテキストリンク）を活用
- タグシステムで適切に分類
- 詳細な情報はリンク先に委ねる

## テンプレートシステム

Scrapsには構造化コンテンツ作成のためのテンプレートシステムがあります。

利用可能なテンプレートを確認するには、以下のコマンドを実行してください：

```bash
mise exec -- scraps template list
```
