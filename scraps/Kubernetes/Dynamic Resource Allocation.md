## DRA

#[[Cloud Native]]

GPU・TPU・FPGAなど特殊ハードウェアを[[Kubernetes/Pod]]へ動的に割り当てるための仕組み。整数カウントのみのlegacy device pluginモデルを置き換え、Kubernetes 1.31でGAを達成した

- **ResourceSlice API**: ベンダーがハードウェア能力をadvertise
- **ResourceClaim API**: ワークロードが必要なハードウェアを宣言
- [[kube-scheduler]]がPodをNodeに割り当てる際にデバイスのマッチングも担う

<https://kubernetes.io/blog/2026/06/24/wg-device-management-spotlight-2026/>

[[Kubernetes]]
