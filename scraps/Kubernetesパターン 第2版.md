### Authors:
Bilgin Ibryam, Roland Huß, [[松浦 隼人]]

#[[Book]] 

![](https://www.oreilly.co.jp/books/images/picture_large978-4-8144-0088-1.jpeg)

[O'Reilly Japan](https://www.oreilly.co.jp/books/9784814400881/)

[[Kubernetes]]ベースの[[Cloud Native|クラウドネイティブ]]アプリケーションを構築するパターンとして紹介する書籍

### 序章
- [[マイクロサービス]]/[[境界づけられたコンテキスト]]/[[DDD/集約]]
- [[ドメイン駆動設計]]/[[ヘキサゴナルアーキテクチャ]]/[[The Twelve-Factor App]]
- [[コンテナ]]
- [[Kubernetes/Pod]]/[[Kubernetes/Service]]/[[Kubernetes/Label]]/[[Kubernetes/Namespace]]
## 第1部 基本パターン
### 2章 Predicatable Demand（予測可能な需要）
### 3章 Declarative Deployment（宣言的デプロイ）
- [[Kubernetes/Deployment]]
- [[ブルーグリーン戦略|ブルーグリーンリリース]]/[[カナリアリリース]]
- Flagger/[[Argo Rollouts]]/[[Knative]]
### 4章 Health [[Kubernetes/Probe]]
- [[Kubernetes/Liveness Probe]]/[[Kubernetes/Readiness Probe]]/[[Kubernetes/Startup Probe]]
### 5章 Managed Lifecycle（管理されたライフサイクル）
- [[SIGKILL]]/[[SIGTERM]]
- [[Kubernetes/コンテナライフサイクルフック|postStart/preStop]]
### 6章 Automated Placement（自動的な配置）
- [[kube-scheduler|スケジューリング]]
  - [[Node affinity|ノードアフィニティ]]
  - [[Kubernetes/Inter-pod affinity and anti-affinity|Podアフィニティとアンチアフィニティ]]
  - [[Kubernetes/Topology Spread Constraint]]
  - [[Kubernetes/Taints and Tolerations]]
## 第II部 振る舞いパターン
### 7章 Batch Job（バッチジョブ）
- [[Kubernetes/Job]]
### 8章 Periodic Job（定期ジョブ）
- [[Kubernetes/CronJob]]
### 9章 Daemon Service（デーモンサービス）
- [[Kubernetes/DaemonSet|DaemonSet]]
### 10章 Singleton Service（シングルトンサービス）
- [[Kubernetes/Headless Service|ヘッドドレスService]]/[[kube-proxy]]/StatefulService
- [[etcd]]/ZooKeeper/[[Dapr]]
- [[Kubernetes/PodDisruptionBudget]]
### 11章 Stateless Service（ステートレスサービス）
- [[Kubernetes/PersistentVolume|PersistentVolume/PersistentVolumeClaim]]
### 12章 Stateful Service（ステートフルサービス）
- [[Kubernetes/CustomResourceDefinition]]
- [[Kubernetes/StatefulSet]]
### 13章 [[サービスディスカバリ|Service Discovery（サービスディスカバリ）]]
- [[Kubernetes/Service]]
- [[Kubernetes/Ingress]]
- [[Knative Serving]]
### 14章 Self Awareness（セルフアウェアネス）
- [[Kubernetes/Downward API]]
## 第III部 構造化パターン
### 15章 Init Container（Init コンテナ）
- [[Kubernetes/Initコンテナ]]
### 16章 Sidecar（サイドカー）
- [[サイドカー]]
### 17章 Adapter（アダプタ）
- [[Prometeus]]
### 18章 Ambassador（アンバサダ）
## 第IV部 設定パターン
### 19章 EnvVar Configuration（環境変数による設定）
- [[The Twelve-Factor App]]
### 20章 Configuration Resource（設定リソース）
- [[Kubernetes/ConfigMap]]
- [[Kubernetes/Secret|Secret]]
### 21章 Immutable Configuration（イミュータブル設定）
- [[Docker]]
- [[Kubernetes/Immutable Configuration]]パターン
- OpenShift Templates
### 22章 Configuration Template（設定テンプレート）
## 第V部 [[Security|セキュリティ]]パターン
### 23章 Process Containment（プロセス封じ込め）
- [[Kubernetes/Security Context]]
- [[Kubernetes/Pod Security Standards]]/[[Kubernetes/Pod Security Admission]]
- シフトレフト
### 24章 Network Segmentation（ネットワークセグメンテーション）
- [[Multitenancy|マルチテナント]]
- [[Kubernetes/Network policy]]
- [[Kubernetes Network Policy Recipes]]
- Inspektor Gadget/[[eBPF]]/[[Cilium]]
- [[サービスメッシュ]]/[[Istio]]/[[AuthorizationPolicy]]
- ソフトウェア定義ネットワーク
### 25章 Secure Configuration（セキュア設定）
- [[Kubernetes/Secret]]
- Sealed Secret/External Secret/[[SMS]](AWS Secret Manager)/[[sops]]
- [[KMS]]([[Amazon/KMS]])
- [[Container Storage Interface]]/[[Secrets Store CSI Driver]]
- Vault Sidecar Agent Injector
### 26章 Access Control（アクセス制御）
- [[OIDC]]/[[Bearerトークン]]
- [[RBAC]]/[[ABAC]]
- [[Kubernetes/ServiceAccount]]/[[JWT]]
- [[Kubernetes/Role]]/[[Kubernetes/RoleBinding]]
- [[Kubernetes/ClusterRole]]/[[Kubernetes/ClusterRoleBinding]]
## 第VI部 高度なパターン
### 27章 Controller（コントローラ）
- [[Kubernetes/Controller]]
### 28章 Operator（オペレータ）
- [[Kubernetes/Operator]]
- Kubebuilder/Operator Framework/Metacontroller
### 29章 Elastic Scale（エラスティックスケール）
- [[Kubernetes/HorizontalPodAutoscalar]]
- [[Knative]]/[[KEDA]]
- VerticalPodAutoscalar
- ClusterAutoscalar
### 30章 Image Builder（イメージビルダ）
- [[Docker]]/[[Dockerfile]]/[[Open Container Initiative|OCI]]
- コンテナイメージビルダ #[[Continuous Integration]]
  - Buildah/Podman/Kaniko/BuildKit
  - CNB(Cloud Native Buildpacks)
  - Jib/ko/Apko
- ビルドオーケストレータ #[[Continuous Delivery]]
  - OpenShift Build/kbld/[[Kubernetes/Job]]