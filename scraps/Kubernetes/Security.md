#[[Security]]

[[Kubernetes]]クラスタとワークロードを保護するためのセキュリティ対策の総称

4Csセキュリティモデルに基づき、Cloud、Cluster、Container、Codeの各レイヤーで多層防御を実装する

主なセキュリティ機能:

- アクセス制御: ServiceAccount、Role、RBAC
- Pod保護: Security Context、Pod Security Standards、Pod Security Admission
- ネットワーク: Network policy、サービスメッシュ
- シークレット管理: Secret

<https://kubernetes.io/docs/concepts/security/>
