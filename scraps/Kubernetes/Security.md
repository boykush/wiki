#[[Security]] #[[Kubernetes]]

[[Kubernetes]]クラスタとワークロードを保護するためのセキュリティ対策の総称

4Csセキュリティモデルに基づき、Cloud、Cluster、Container、Codeの各レイヤーで多層防御を実装する

主なセキュリティ機能:

- アクセス制御: [[Kubernetes/ServiceAccount]]、[[Kubernetes/Role]]、[[RBAC]]
- Pod保護: [[Kubernetes/Security Context]]、[[Kubernetes/Pod Security Standards]]、[[Kubernetes/Pod Security Admission]]
- ネットワーク: [[Kubernetes/Network policy]]、[[サービスメッシュ]]
- シークレット管理: [[Kubernetes/Secret]]

<https://kubernetes.io/docs/concepts/security/>
