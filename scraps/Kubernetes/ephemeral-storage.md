#[[Cloud Native]]

[[Kubernetes/Pod]] 内のコンテナに `requests` / `limits` として指定できるローカル一時ストレージの [[Kubernetes/リソース]]

コンテナの writable layer、ログ、ディスク上の `emptyDir` が対象で、上限超過は kubelet による Pod eviction の契機になる

[[Kubernetes/Deployment]] では Pod template に書く。永続データは [[Kubernetes/PersistentVolume]] や外部ストレージに置く

---

<https://kubernetes.io/docs/concepts/storage/ephemeral-storage/>
<https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/>
