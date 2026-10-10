#[[LLM]]

[[Backstage]] の backend plugin（`@backstage/plugin-mcp-actions-backend`）。Backstage の Actions Registry に登録された action を、[[MCP]] サーバーの tool として出す

- [[Backstage/Software Catalog]] を読む action を出せば、エージェントが catalog を引ける
- `mcpActions.servers` で複数のサーバーに分けると、それぞれが `/api/mcp-actions/v1/<名前>` のエンドポイントになる
- 認証には、静的なトークン（external access）や OAuth を使える

<https://backstage.io/docs/ai/mcp-actions/>
