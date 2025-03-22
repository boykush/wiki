#[[Network]]

![](https://github.com/kubernetes/community/raw/master/icons/png/resources/labeled/netpol-128.png)

[[Kubernetes]]において、[[Kubernetes/Pod]]に対する接続元(ingress)、接続先(egress)のルールを定義できるリソース。[[OSI参照モデル]]のL3/L4ネットワークレイヤを扱う

ルールは[[CNI]]プラグインによって利用される

Podセレクタは[[Kubernetes/Namespace]]内でのみマッチする

---

- [Network Policies | Kubernetes](https://kubernetes.io/docs/concepts/services-networking/network-policies/)
