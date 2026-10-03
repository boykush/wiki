#[[Observability]] #[[LLM]]

生成AIの操作（LLM呼び出し、エージェント、ツール実行など）を[[OpenTelemetry]]で計装する際、spanに何を割り当てどのtrace単位でまとめるかといったルールのOpenTelemetry公式標準

- エージェントの1回の呼び出しを親spanとし、LLM呼び出しやツール実行を子spanとして1つの[[分散トレース|トレース]]にまとめる
- [[MCP]]ではリクエストごとにspanを作り、`params._meta`の`traceparent`でクライアント側のトレースにつなぐ。セッションはトレースにせず`mcp.session.id`属性で束ねる

<https://github.com/open-telemetry/semantic-conventions-genai>
