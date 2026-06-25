#[[Observability]] #[[Software Design]]

[[OpenTelemetry]]のAPIをラップする抽象化レイヤーは、良い意図に反してパフォーマンスを損なうことが多いという主張

- **割り当て強制シグネチャ**: List/Vecを受け取るラッパーはOTelのゼロアロケーション設計（専用オーバーロード、TagListなど）を排除し、全呼び出し元にヒープ確保を強いる
- **Instrumentキャッシュラッパー**: 呼び出しごとのConcurrentDictionary/Mutexルックアップはスタートアップ時に一度作るよう設計されたInstrumentの意図と相反する
- ラッパーを学ぶためOTel自体の知識が育たない、メンテナンスコスト増、デバッグ難化も副作用
- 正当なユースケース: レガシー移行中の一時的デュアルライト、OTel Weaverなどコード生成ツールによるガバナンス強制（生成コードはOTelを直接呼ぶ）

<https://opentelemetry.io/blog/2026/dont-wrap-opentelemetry/>
