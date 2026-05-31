#[[Security]]

[[Kubernetes/CRD]]の1つで、外部の[[SMS]]から取得した値を[[Kubernetes/Secret]]として同期するための宣言を行うリソース

External Secrets [[Kubernetes/Operator]] (ESO) によって導入される。`SecretStore` / `ClusterSecretStore`で接続先プロバイダ（[[Google Cloud/Secret Manager]]やHashiCorp Vault等）を定義し、`ExternalSecret`が同期対象の項目とKubernetes Secretへのマッピングを記述する

[[Secrets Store CSI Driver]]がCSI Volumeマウントを介してPodへ値を渡すのに対し、ExternalSecretは生成されたKubernetes Secretを通常通り参照できる

---

- [ExternalSecret | external-secrets](https://external-secrets.io/latest/api/externalsecret/)

[[Kubernetes]]
