## Model Context Protocol

#[[AI]]

[[LLM]]が様々なリソースにアクセスするための[[Anthropic]]社による標準化プロトコル

MCPサーバーがローカルまたはリモートのリソースにアクセスし、それをMCPクライアントが利用する

MCPクライアントとサーバー間のトランポートレイヤでは
- stdio（標準入出力）
- [[HTTP]] POST
のいずれかが用いられる

<https://modelcontextprotocol.io/docs/concepts/architecture>