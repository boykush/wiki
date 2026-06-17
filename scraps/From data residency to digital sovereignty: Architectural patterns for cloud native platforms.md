#[[Cloud Native]] #[[Security]]

[[CNCF]] ブログ記事。デジタル主権（digital sovereignty）が政策論議から工学課題へ移行した背景と、tenant cluster パターンによる解決策を論じる

主権が要求する4要素: 法的管轄内封じ込め・運用自律性・暗号鍵の管轄内保持・ワークロードポータビリティ

- **Single cluster の限界**: 共有コントロールプレーンは連鎖インシデントリスク、Namespace 分離は法的隔離として不十分
- **Tenant cluster パターン**: 管轄ごとに独立した [[Kubernetes]] コントロールプレーンを既存クラスタ上の Pod として起動（vCluster が実装例）
- ノードセレクターで残留制約を強制、監査ログは管轄をまたがない
- ポリシー実施: Kyverno / OPA Gatekeeper、[[GitOps]] デプロイ: [[Argo CD]] / Flux、ネットワーク: [[Cilium]]
- [[Kubernetes]] のポータビリティにより、調達変更時もワークロードの再実装なしで移行可能
- 限界: オペレーター管轄露出（CLOUD Act リスクを軽減できるが排除は不可）

<https://www.cncf.io/blog/2026/06/16/from-data-residency-to-digital-sovereignty-architectural-patterns-for-cloud-native-platforms/>
