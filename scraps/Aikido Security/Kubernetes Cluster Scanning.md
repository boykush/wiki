---
sources:
  - resource: "https://help.aikido.dev/cloud-scanning/kubernetes-cluster-scanning.md"
  - resource: "https://help.aikido.dev/container-image-scanning/cloud-provider-registries/only-scan-running-container-images.md"
---

#[[Security]] #[[Cloud Native]]

[[Kubernetes]] クラスタ内に Aikido 公式の Kubernetes Agent を配置し、クラスタ内のリソースを読んで Aikido へ外向きに送ることで、image が動いているかを [[Aikido Security/Platform]] の判定に反映できる機能

- 連携時にクラスタの Environment を指定すると、本番かテストかに応じて finding の severity が調整される
