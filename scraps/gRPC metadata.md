#[[Network]] #[[API Architecture]]

[[gRPC]]コールに付加するキーと値のペア。[[HTTP/2]]ヘッダーとして実装され、認証情報やトレーシングIDの伝搬に利用される

- キー: ASCII文字列（大文字小文字区別なし、`grpc-` プレフィックスは予約済み）
- 値: ASCII文字列またはバイナリ（バイナリキーのサフィックスは `-bin`）
- 種類: Request metadata（クライアント→サーバー）/ Response headers / Response trailers

<https://grpc.io/docs/guides/metadata/>
