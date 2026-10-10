#[[Observability]]

アプリケーションのコードを変えずに [[OpenTelemetry]] の計装を入れるやり方。Node.js では `--require` で auto-instrumentations を読み込むと、HTTP・フレームワーク・DB などライブラリの呼び出しがトレースされる。アプリ自身のコードは計装されない

- [[Kubernetes]] では、OpenTelemetry Operator 用に配られている自動計装の image を [[Kubernetes/Initコンテナ]] で共有ボリュームへコピーし、`NODE_OPTIONS` で読み込ませれば、Operator なしでも使える

<https://opentelemetry.io/docs/zero-code/js/>
