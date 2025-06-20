# CLAUDE.md

このファイルは、Claude Code (claude.ai/code) がこのリポジトリで作業する際のガイダンスを提供します。

## アーキテクチャ概要

これは**Scraps**で構築された個人用ウィキです。Scrapsは、ナレッジマネジメント用に設計されたRustベースの静的サイトジェネレーターです。このシステムは、Markdownファイルをウィキスタイルのリンク、タグ組織、および自動GitHub Pagesデプロイを備えた検索可能なウィキに変換します。

主要なアーキテクチャコンポーネント：
- **コンテンツ**: `/scraps/`ディレクトリ内のMarkdownファイル（384+ファイル）
- **設定**: サイト設定とビルドオプションを含む`Config.toml`
- **出力**: `/public/`ディレクトリに生成される静的HTML
- **デプロイ**: GitHub ActionsによるGitHub Pagesへの自動デプロイ
- **言語**: 主に日本語コンテンツ（`lang_code = "ja"`）

## 一般的な開発コマンド

### ビルドとプレビュー
```bash
# 静的サイトをビルド（MarkdownからHTMLを生成）
scraps build

# ローカルでプレビュー配信（http://127.0.0.1:1112）
scraps serve

# ウィキ内の利用可能なタグを一覧表示
scraps tag

# テンプレートファイルを生成
scraps template

# 新しいscrapsプロジェクトを初期化（必要に応じて）
scraps init
```

### インストール（必要に応じて）
```bash
# Cargo経由でインストール
cargo install scraps

# macOSでインストール
brew install boykush/tap/scraps
```

## コンテンツ構成

コンテンツは`/scraps/`ディレクトリに以下のように構成されています：
- **階層構造**: 関連トピックをグループ化するサブディレクトリ（例：`Amazon/`、`Google Cloud/`、`Kubernetes/`、`DevOps capabilities/`）
- **テンプレートシステム**: `/templates/`のテンプレートから構造化コンテンツを生成するために`scraps template`を使用
- **利用可能なテンプレート**: 一貫したフォーマットのための`book.md`、`person.md`

## コンテンツ作成ワークフロー

1. `/scraps/`ディレクトリでMarkdownファイルを作成/編集
2. ウィキスタイルの相互参照には`[[内部リンク]]`を使用
3. `[[タグ名]]`記法でタグを追加（対応するスクラップが存在しない場合はタグになる）
4. `scraps serve`で変更をプレビュー
5. プッシュ時にGitHub Actions経由で自動ビルド・デプロイ

## 設定詳細

`Config.toml`ファイルが制御する項目：
- **base_url**: デプロイURL（https://boykush.github.io/wiki/）
- **sort_key**: "linked_count" - 被リンク数でページをソート
- **build_search_index**: true - 全文検索を有効化
- **color_scheme**: "only_dark" - ダークテーマのみ
- **paginate_by**: 50 - ページネーション制限
- **timezone**: "Asia/Tokyo" - gitコミット日時機能用
- **favicon**: カスタムアイコンURL

## デプロイプロセス

GitHub Actions（`.github/workflows/build-and-deploy.yml`）による自動デプロイ：
- **トリガー**: リポジトリへのプッシュ時
- **アクション**: `boykush/scraps-deploy-action@v2`
- **ターゲット**: `gh-pages`ブランチ → GitHub Pages
- **要件**: gitコミット日時機能のため`fetch-depth: 0`
- **環境**: 認証に`GITHUB_TOKEN`を使用

## 重要な制約

- **積極的にドキュメントファイルを作成しない** - 明示的に要求された場合のみ作成
- **コンテンツ構造を維持** - `/scraps/`内の既存の階層構造を尊重
- **適切な場合はテンプレートを使用** - 一貫性のために既存テンプレートを活用