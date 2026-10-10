#[[Security]] #[[Cloud Native]]

外部のシークレット管理サービスから値を読み、[[Kubernetes/Secret]] に書き込む [[Kubernetes/Operator]]

- 同期する項目は [[Kubernetes/ExternalSecret]] で宣言し、接続先は `ClusterSecretStore` でクラスタに1か所にまとめられる
- 接続先に [[Amazon/Parameter Store]] を使え、認証には Kubernetes の Secret に置いたアクセスキーを使える

<https://external-secrets.io/latest/>
