## Model Context Protocol

[[LLM]]が様々なリソースにアクセスするための標準化プロトコル

MCPサーバーがローカルまたはリモートのリソースにアクセスし、それをMCPクライアントが利用する

MCPクライアントとサーバー間のトランポートレイヤでは
- stdio（標準入出力）
- [[HTTP]] POST
のいずれかが用いられる

---

- [Core architecture - Model Context Protocol](https://modelcontextprotocol.io/docs/concepts/architecture)