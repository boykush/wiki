#[[Observability]]

[[Datadog]]を操作するための[[CLI]]コンパニオン。AIエージェントによる利用を想定して設計されており、33以上のDatadog製品にまたがる200以上のコマンドを提供する

- **認証**: OAuth2 (PKCE) によるブラウザ認証。APIキー環境変数も対応
- **AIエージェントモード**: 環境変数またはフラグで自動検出。構造化JSONレスポンスを返し、確認プロンプトを自動承認
- **出力形式**: `--output` フラグで JSON / YAML / テーブルを指定可能

```sh
go install github.com/datadog-labs/pup@latest
```

<https://github.com/datadog-labs/pup>
