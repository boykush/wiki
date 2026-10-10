#[[Observability]]

[[OpenTelemetry]] のトレースを保存し、検索・表示する分散トレーシングの基盤。v2 は [[OpenTelemetry/Collector]] を土台に作られていて、設定も Collector と同じ形で書く

- 保存先に、本体に組み込まれた単一ノード用のローカルファイルストレージ Badger を使える
- 検索の機能（query）が [[MCP]] サーバーを持ち、エージェントからトレースを読める

<https://www.jaegertracing.io/>
