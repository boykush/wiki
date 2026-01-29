#[[Security]] #[[Kubernetes]]

[[Kubernetes]]における包括的なセキュリティフレームワーク

多層防御アプローチによってクラスタとアプリケーションを保護する

主要なセキュリティ領域：

- **Pod Security**: [[Kubernetes/Pod Security Standards]]と[[Kubernetes/Pod Security Admission]]による[[Kubernetes/Pod]]のセキュリティ制御
- **Access Control**: [[Kubernetes/ServiceAccount]]、[[Kubernetes/Role]]、[[Kubernetes/RoleBinding]]による[[RBAC]]ベースのアクセス管理
- **Network Segmentation**: [[Kubernetes/Network policy]]によるトラフィック制御
- **Secrets Management**: [[Kubernetes/Secret]]による機密情報の分離管理
- **Runtime Security**: [[Kubernetes/Security Context]]によるプロセスレベルの制約

認証・認可には[[OIDC]]統合も可能

<https://kubernetes.io/docs/concepts/security/>
