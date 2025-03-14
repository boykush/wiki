### Authors:
Bilgin Ibryam, Roland Huß, [[松浦隼人]]

#[[Book]] 

![](https://www.oreilly.co.jp/books/images/picture_large978-4-8144-0088-1.jpeg)

[O'Reilly Japan](https://www.oreilly.co.jp/books/9784814400881/)

[[Kubernetes]]ベースの[[Cloud Native|クラウドネイティブ]]アプリケーションを構築するパターンとして紹介する書籍

### 序章
- [[マイクロサービス]]/[[境界づけられたコンテキスト]]/[[集約]]
- [[ドメイン駆動設計]]/[[ヘキサゴナルアーキテクチャ]]/[[The Twelve-Factor App]]
- [[コンテナ]]
- [[Pod]]/[[Kubernetes Service|Service]]/Label/Namespace
## 第1部 基本パターン
### 2章 Predicatable Demand（予測可能な需要）
### 3章 Declarative Deployment（宣言的デプロイ）
- [[Kubernetes Deployment|Deployment]]
- [[ブルーグリーン戦略|ブルーグリーンリリース]]/[[カナリアリリース]]
- Flagger/[[Argo Rollouts]]/[[Knative]]
### 4章 Health [[Probe]]
- [[Liveness Probe]]/[[Readiness Probe]]/[[Startup Probe]]
### 5章 Managed Lifecycle（管理されたライフサイクル）
- [[SIGKILL]]/[[SIGTERM]]
- [[コンテナライフサイクルフック|postStart/preStop]]
### 6章 Automated Placement（自動的な配置）
- [[kube-scheduler|スケジューリング]]
  - [[Node affinity|ノードアフィニティ]]
  - [[Inter-pod affinity and anti-affinity|Podアフィニティとアンチアフィニティ]]
  - [[Topology Spread Constraint]]
  - [[Taints and Tolerations]]
## 第II部 振る舞いパターン
### 7章 Batch Job（バッチジョブ）
- [[Kubernetes Job|Job]]
### 8章 Periodic Job（定期ジョブ）
- [[Kubernetes CronJob|CronJob]]
### 9章 Daemon Service（デーモンサービス）
- [[Kubernetes DaemonSet|DaemonSet]]
### 10章 Singleton Service（シングルトンサービス）
- [[Headless Service|ヘッドドレスService]]/[[kube-proxy]]/StatefulService
- [[etcd]]/ZooKeeper/[[Dapr]]
- [[PodDisruptionBudget]]
### 11章 Stateless Service（ステートレスサービス）
- [[PersistentVolume|PersistentVolume/PersistentVolumeClaim]]
### 12章 Stateful Service（ステートフルサービス）
- [[CustomResourceDefinition]]
- [[Kubernetes StatefulSet|StatefulSet]]
### 13章 [[サービスディスカバリ|Service Discovery（サービスディスカバリ）]]
- [[Kubernetes Service|Service]]
- [[Kubernetes Ingress|Ingress]]
- [[Knative Serving]]
### 14章 Self Awareness（セルフアウェアネス）
- [[Downward API]]
## 第III部 構造化パターン
### 15章 Init Container（Init コンテナ）
- [[Initコンテナ]]
### 16章 Sidecar（サイドカー）
- [[Sidecar]]
### 17章 Adapter（アダプタ）
- Prometheus
### 18章 Ambassador（アンバサダ）
## 第IV部 設定パターン
### 19章 EnvVar Configuration（環境変数による設定）
- [[The Twelve-Factor App]]
### 20章 Configuration Resource（設定リソース）
- [[Kubernetes ConfigMap|ConfigMap]]
- [[Kubernetes Secret|Secret]]
### 21章 Immutable Configuration（イミュータブル設定）
- [[Docker]]
- [[Immutable Configuration]]パターン
- OpenShift Templates
### 22章 Configuration Template（設定テンプレート）
## 第V部 [[Security|セキュリティ]]パターン
### 23章 Process Containment（プロセス封じ込め）
- [[Security Context]]
- [[Pod Security Standards]]/[[Pod Security Admission]]
### 24章 Network Segmentation（ネットワークセグメンテーション）
### 25章 Secure Configuration（セキュア設定）
### 26章 Access Control（アクセス制御）
## 第VI部 高度なパターン
### 27章 Controller（コントローラ）
### 28章 Operator（オペレータ）
### 29章 Elastic Scale（エラスティックスケール）
### 30章 Image Builder（イメージビルダ）