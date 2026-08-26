# Wiki

[![Build and deploy GH Pages](https://github.com/boykush/wiki/actions/workflows/build-and-deploy.yml/badge.svg)](https://github.com/boykush/wiki/actions/workflows/build-and-deploy.yml)

個人用ナレッジウィキ

https://boykush.github.io/wiki/

[Scraps](https://github.com/boykush/scraps) で構築。

## 構成

- `scraps/` がウィキの基準ディレクトリ。Markdown 本体と設定 `scraps/.scraps.toml` を置く
- ページ間は `[[Title]]` のウィキリンク、横断カテゴリは `#[[Tag]]` で繋ぐ。被リンクは Scraps が計算する
- 同名タイトルはサブディレクトリ（ctx）で分ける。例: `scraps/Book/テスト駆動開発.md` は `Book` ctx
- main への push で `build-and-deploy.yml` が `scraps build` を実行し、GitHub Pages へデプロイする。生成物 `scraps/_site/` は Git 管理外

## ページを追加する

ローカルの Claude Code / Codex で ingest skill（[.claude/skills/ingest/SKILL.md](.claude/skills/ingest/SKILL.md)）を使う。URL・用語・会話などの情報源から 1 件のページを作り、既存ページへ接続する。要旨とタイトルと接続案を対話で確定してから書くので、リンクの判断は人が持つ。

以前あった RSS 由来と issue 由来の自動取り込みワークフローは廃止した。RSS は記事の候補を手元で拾うためのスクリプトとして残っている。

```sh
mise run fetch-rss -- --date 2026-08-25
mise run fetch-article-body -- --url https://example.com/article
```

購読フィードは [.github/rss-to-scrap/feeds.yml](.github/rss-to-scrap/feeds.yml) にある。

## ローカルで動かす

[mise](https://mise.jdx.dev/) がツールとタスクを管理する。`SCRAPS_DIRECTORY` は設定済みなので `-C` は要らない。

```sh
mise install
mise run serve
```

`mise run serve` は http://127.0.0.1:1112 で配信する。ほかに `mise run build`（静的サイト生成）、タスク一覧は `mise tasks`。mise に登録していない Scraps のコマンドは `mise exec -- scraps ...` で実行する。

```sh
mise exec -- scraps search "<query>" --json
mise exec -- scraps lint
```

## remote MCP サーバーの image

同じコンテンツを [Scraps](https://github.com/boykush/scraps) の MCP サーバーとして動かすための image をこのリポジトリから公開している。`ghcr.io/boykush/wiki-mcp-server` は scraps のバイナリと `scraps/` 配下を同梱したもので、main への push で GitHub Actions が build して GHCR へ push する。

```sh
docker run --rm -p 1113:1113 ghcr.io/boykush/wiki-mcp-server:main
```

引数は listen アドレスだけを受け取る（既定は `0.0.0.0:1113`）。

```sh
docker run --rm -p 8080:8080 ghcr.io/boykush/wiki-mcp-server:main 0.0.0.0:8080
```

MCP のエンドポイントは `http://127.0.0.1:1113/mcp`。認証も TLS も持たないので、ネットワークへ露出させる場合は前段に認証を置く。

```sh
claude mcp add --transport http scraps http://127.0.0.1:1113/mcp
```
