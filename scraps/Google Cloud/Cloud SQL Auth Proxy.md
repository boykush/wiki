#[[Security]] #[[Network]]

[[Google Cloud/Cloud SQL]]への接続を仲介するローカルプロキシ

- [[TLS]]によって接続を暗号化する
- [[IAM]]ベースの認可で接続元を制御し、authorized networksやSSL証明書の管理を不要にする
- アプリケーションはローカルソケット（TCP/Unix domain socket）経由でプロキシに接続し、プロキシがCloud SQLインスタンスへトンネリングする

---

- <https://cloud.google.com/sql/docs/mysql/sql-proxy>
- <https://github.com/GoogleCloudPlatform/cloud-sql-proxy>
