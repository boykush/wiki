#[[Cloud Native]]

![](https://dapr.io/images/dapr.svg)

[[マイクロサービス]]を構築するためのベストプラクティスをビルディングブロックと呼ばれる複数の独立したAPIとして提供する[[サーバーレス]]プラットフォーム

Daprは他のプラットフォームに依存せず、ローカル、[[Kubernetes]]クラスタ、仮想マシンまたは物理マシンのような様々な環境で実行できる

Daprの[[サイドカープロキシ]]は[[Envoy]] proxyと異なり、全ての送信・受信には介入せず[[HTTP]]/[[gRPC]] APIによって公開され、アプリケーション側でサブスクライブする

[[CNCF]] graduated project

---

- [Overview | Dapr Docs](https://docs.dapr.io/concepts/overview/)