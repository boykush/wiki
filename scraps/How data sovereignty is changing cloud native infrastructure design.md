#[[Cloud Native]] #[[Security]]

CNCF ブログ記事 (Dana Cazacu, VEXXHOST, 2026-07-03)。データ主権がクラウドネイティブインフラ設計をどう変えているかを論じる

- データ主権の核心は物理的なサーバー所在地ではなく「誰が強制的にデータ提供を求められるか」という管轄権の問題
- EU の NIS2・DORA (Digital Operational Resilience Act)・AI Act が拘束力ある要件をもたらし、インフラ調達の意思決定を変えている
- 技術的コントロール（admission controller、OPA/Gatekeeper・Kyverno 等の policy engine）が契約的合意を置き換えつつある
- [[GitOps]] リポジトリが複数地域にわたる監査可能・バージョン管理されたインフラ操作を実現
- 欧州の鉄道・銀行・通信事業者が主権的な [[Kubernetes]] クラスタを本番スケールで展開している
- ベンダーロックインや制裁・サービス停止リスクへの対策としてのレジリエンスも主権確保の動機となる
- [[Infrastructure as Code]] と [[CNCF]] エコシステム（OpenStack、Ceph 等）がオープンソース主権インフラの実装基盤

<https://www.cncf.io/blog/2026/07/03/how-data-sovereignty-is-changing-cloud-native-infrastructure-design/>
