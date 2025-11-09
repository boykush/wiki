#[[API Architecture]]

[[Istio]]において、トラフィックルーティングルールを定義するカスタムリソース（[[Kubernetes/CRD]]）。

[[Istio/DestinationRule]]と組み合わせて[[Istio/Subset]]単位でルールを設定可能

以下のようなことが実現できる
- [[Istio/Subset]]の切り替えによる[[ブルーグリーン戦略]]
- weightの設定による[[カナリアリリース]]
- timeoutの設定によるタイムアウト

<https://istio.io/latest/docs/reference/config/networking/virtual-service/>