## DRA

#[[Cloud Native]]

[[Kubernetes/リソース]]としてデバイス（GPU など）の要求・割り当てを管理する機能。Kubernetes v1.35 で GA。[[Kubernetes/PersistentVolume]] と同様のパターンで 4 つのリソースを持つ。

- **DeviceClass**: デバイス種別（GPU・MIG・VFIO など）を定義
- **ResourceSlice**: DRA ドライバが各ノードのデバイス情報・属性を記録
- **ResourceClaim**: [[Kubernetes/Pod]] がデバイスを要求する宣言。Pod ライフサイクルから独立して存在
- **ResourceClaimTemplate**: [[Kubernetes/Deployment]] 用テンプレート。Pod に応じて ResourceClaim を自動生成

CEL 式でデバイス属性（メモリ容量など）によるマッチングが可能

<https://www.cncf.io/blog/2026/07/01/understanding-dynamic-resource-allocation-in-kubernetes/>

[[Kubernetes]]
