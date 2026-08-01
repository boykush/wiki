#[[LLM]]

[[mise]] 自身を [[MCP]] サーバーとして起動する `mise mcp`。stdio 上の JSON-RPC 2.0 で MCP クライアントに開発環境情報を公開する

- resource は読み取り専用で `mise://tools`（[[mise/Dev Tools]]）、`mise://tasks`（[[mise/Task]]）、`mise://env`（[[mise/Environment]]）、`mise://config` の 4 つ。tool は `run_task` と未実装の `install_tool`
- v2026.7.16 追加の `list_commands` は各コマンドの declared effect（`read` / `write` / `destructive` / 未分類）を返す。未分類は安全ではなく不明として扱い、agent が実行前に副作用を判断できるようにする

<https://mise.jdx.dev/mcp.html>
