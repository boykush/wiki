#[[Security]]

外部の[[SMS]]からシークレットを取得し、[[Kubernetes/Secret]]として同期する[[Kubernetes/CRD]]

External Secrets Operator (ESO)が提供するリソース。SecretStore（または ClusterSecretStore）を参照して認証情報と接続先を解決し、定期的に同期する

[[Secrets Store CSI Driver]]とは別のアプローチで、外部 SMS の値をネイティブの Secret に同期させる

---

<https://external-secrets.io/>
