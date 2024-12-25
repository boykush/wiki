#[[Network]] #[[API Architecture]] #[[REST]]

[[gRPC]]において、gRPC serviceをRESTful APIとして提供するためのライブラリ。[[HTTP]]+JSONのインターフェースで[[リバースプロキシ]]サーバーを生成する

HTTP仕様は[[Protocol Buffers]]上において `google.api.http` のような `HttpRule` によって記述する

同リポジトリには[protoc-gen-openapiv2](https://github.com/grpc-ecosystem/grpc-gateway/tree/main/protoc-gen-openapiv2)プラグインも含まれており[[Open API]]仕様を出力できる

---

- [gRPC-Gateway | gRPC-Gateway Documentation Website](https://grpc-ecosystem.github.io/grpc-gateway/)