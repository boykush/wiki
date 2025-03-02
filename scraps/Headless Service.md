#[[Cloud Native]]

[[Kubernetes]]において、[[Kubernetes Service|Service]]の定義方法の一つ

clusterIP `.spec.clusterIP` を `"None"` に指定することで、[[Pod]]のIPを直接参照するような設定にする

---

- [Service | Kubernetes](https://kubernetes.io/ja/docs/concepts/services-networking/service/#headless-service)