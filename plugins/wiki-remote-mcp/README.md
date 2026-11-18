# wiki-remote-mcp

この wiki を引くための remote MCP サーバーへの参照を1つ持つだけの plugin。[Agent Plugins](https://agent-plugins.org/specification) の形で書く。名前の `remote` は、ローカルで `scraps mcp serve` を立てる経路と区別するためのもの。そちらは [scraps 本体の `mcp-server` plugin](https://github.com/boykush/scraps/tree/main/plugins/mcp-server) が配る。

サーバー名は `scraps`。tool は `mcp__scraps__*` として見える（`search_scraps` / `get_scrap` / `lookup_scrap_links` など）。`~/.claude/CLAUDE.md`（[dotfiles](https://github.com/boykush/dotfiles) の `agents/AGENTS.md`）の手順がこの名前を前提にしているので、変えない。

## 配る中身

`mcp.json` の、`https://wiki-mcp.boykush.com/mcp` への参照だけ。実体は2つの repo に分かれている。

- **image** はこの repo の CI が wiki の内容ごとビルドして `ghcr.io/boykush/wiki-mcp-server` へ push する。したがって引ける内容は **main に push 済みのもの**で、手元の未 push な編集は含まれない
- **動く場所と hostname** は [infrastructure-as-code](https://github.com/boykush/infrastructure-as-code) の `applications/remote-mcp-server/`。URL が変わるならここが先に変わり、`mcp.json` が後を追う

繋がらないときは公開サイト <https://boykush.github.io/wiki/> を見る。

## 使う

Agent Plugin として、この repo のこのディレクトリを `wiki-remote-mcp--v<version>` の tag で引く。版は `plugin.json` の `version` が持ち、main に入ると [boykush/workflows](https://github.com/boykush/workflows) の agent-plugins が tag を打つ。

隣の `apm.yml` は、apm がこの plugin を Claude と Codex へ展開するための中継ぎで、同じ workflow が `plugin.json` と `mcp.json` から書く。手では直さない。
