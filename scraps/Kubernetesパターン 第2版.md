### Authors:
Bilgin Ibryam, Roland Huß, [[松浦隼人]]

#[[Book]] 

![](https://www.oreilly.co.jp/books/images/picture_large978-4-8144-0088-1.jpeg)

[O'Reilly Japan](https://www.oreilly.co.jp/books/9784814400881/)

[[Kubernetes]]ベースの[[Cloud Native|クラウドネイティブ]]アプリケーションを構築するパターンとして紹介する書籍


### 序章
- [[マイクロサービス]]/[[境界づけられたコンテキスト]]/[[集約]]
- [[ドメイン駆動設計]]/[[ヘキサゴナルアーキテクチャ]]/[[Twelve-Factor App]]
- [[コンテナ]]
- [[Pod]]/[[Kubernetes Service|Service]]/Label/Namespace
## 第1部 基本パターン
### 2章 Predicatable Demand（予測可能な需要）
### 3章 Declarative Deployment（宣言的デプロイ）
- [[Kubernetes Deployment|Deployment]]
- [[ブルーグリーン戦略|ブルーグリーンリリース]]/[[カナリアリリース]]
- Flagger/[[Argo Rollouts]]/Knative
### 4章 Health [[Probe]]
- [[Liveness Probe]]/[[Readiness Probe]]/[[Startup Probe]]
### 5章 Managed Lifecycle（管理されたライフサイクル）
### 6章 Automated Placement（自動的な配置）
## 第II部 振る舞いパターン
### 7章 Batch Job（バッチジョブ）
### 8章 Periodic Job（定期ジョブ）
### 9章 Daemon Service（デーモンサービス）
### 10章 Singleton Service（シングルトンサービス）
### 11章 Stateless Service（ステートレスサービス）
### 12章 Stateful Service（ステートフルサービス）
### 13章 Service Discovery（サービスディスカバリ）
### 14章 Self Awareness（セルフアウェアネス）
## 第III部 構造化パターン
### 15章 Init Container（Init コンテナ）
### 16章 Sidecar（サイドカー）
### 17章 Adapter（アダプタ）
### 18章 Ambassador（アンバサダ）
## 第IV部 設定パターン
### 19章 EnvVar Configuration（環境変数による設定）
### 20章 Configuration Resource（設定リソース）
### 21章 Immutable Configuration（イミュータブル設定）
### 22章 Configuration Template（設定テンプレート）
## 第V部 セキュリティパターン
### 23章 Process Containment（プロセス封じ込め）
### 24章 Network Segmentation（ネットワークセグメンテーション）
### 25章 Secure Configuration（セキュア設定）
### 26章 Access Control（アクセス制御）
## 第VI部 高度なパターン
### 27章 Controller（コントローラ）
### 28章 Operator（オペレータ）
### 29章 Elastic Scale（エラスティックスケール）
### 30章 Image Builder（イメージビルダ）