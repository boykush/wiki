#[[Cloud Native]]

[[Kubernetes]]クラスタのコストを namespace や label などの単位で見えるようにするオープンソース。[[CNCF]] incubating project

- 使用量は既定で[[Prometheus]]から取得するが必須ではなく、算出したコストはメトリクスとして出す
- [[MCP]]サーバーを内蔵し、エージェントがコストを照会できる
- プラグインで[[Datadog]]や[[OpenAI]]など、クラスタ外のサービスの利用料も取り込める

<https://opencost.io/>
