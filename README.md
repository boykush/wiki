# Wiki

個人用ナレッジウィキ

https://boykush.github.io/wiki/

[Scraps](https://github.com/boykush/scraps) で構築。

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
