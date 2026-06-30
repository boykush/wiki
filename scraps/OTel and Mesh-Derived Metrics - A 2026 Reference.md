#[[Observability]] #[[Cloud Native]]

[[CNCF]]ブログの[[OpenTelemetry]]とサービスメッシュメトリクス統合に関するリファレンス記事（2026年）

- [[メトリクス]]収集の2層: [[OpenTelemetry]]はアプリ層（カスタムビジネス指標・[[分散トレース]]）、[[サービスメッシュ]]はネットワーク層（east-westのL7トラフィックをサイドカーが計測、コード変更不要）
- 両層ともリクエストレート・レイテンシ・エラーレートを計測するが測定点が異なり、差分がネットワークオーバーヘッドの可視性を提供する
- Linkerdの主要メトリクスファミリー: `response_total`, `response_latency_ms`, `tcp_open_connections`, `tcp_read_bytes_total`, `tcp_write_bytes_total`
- カーディナリティ管理: レスポンスレイテンシ系列は35以上のラベルを持つため、metric relabeling（スクレイプ時）またはOTTL processor（パイプライン）で削減が必須
- [[OpenTelemetry/Collector]]をDaemonSetで配置し、Linkerdプロキシメトリクスを既存OTelパイプラインへ統合する構成例を紹介
- 3層の補完: ビジネスコンテキスト（OTel）＋ネットワーク層証明（[[サービスメッシュ]]）＋因果連鎖（[[分散トレース]]）

<https://www.cncf.io/blog/2026/06/29/otel-and-mesh-derived-metrics-a-2026-reference/>
