[[Kubernetes/CRD]]の1つで、外部の[[SMS]]から取得した値を[[Kubernetes/Secret]]として同期するための宣言を行うリソース

External Secrets [[Kubernetes/Operator]] (ESO) によって導入される。`SecretStore` / `ClusterSecretStore`で接続先プロバイダを定義し、`ExternalSecret`が同期対象の項目とKubernetes Secretへのマッピングを記述する

---

- [ExternalSecret | external-secrets](https://external-secrets.io/latest/api/externalsecret/)

[[Kubernetes]]
