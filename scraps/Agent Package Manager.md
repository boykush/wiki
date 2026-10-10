## APM

#[[LLM]]

[[Microsoft]] 製の、AI コーディングエージェント向けの依存関係マネージャ。`apm.yml` に skill や [[MCP]] サーバーなどを宣言し、`apm install` で各クライアントの設定の置き場所へ展開する

- 1つの宣言から、[[Claude Code]] と [[Codex]] の両方へ [[Agent Skills]] と MCP の設定を配れる
- 解決した依存は `apm.lock.yaml` に固定される

<https://github.com/microsoft/apm>
