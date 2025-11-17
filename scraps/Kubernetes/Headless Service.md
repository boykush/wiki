 #[[Kubernetes]]

[[Kubernetes/Service]]の定義方法の一つ

clusterIP `.spec.clusterIP` を `"None"` に指定することで、[[Kubernetes/Pod]]のIPを直接参照するような設定にし[[kube-proxy]]はServiceに関与しなくなる

---

- [Service | Kubernetes](https://kubernetes.io/ja/docs/concepts/services-networking/service/#headless-service)
