#[[Security]] #[[Kubernetes]]

![](https://github.com/kubernetes/community/raw/master/icons/png/resources/labeled/secret-128.png)

[[Kubernetes/Pod]]とは別に独立して機密情報を定義する

具体的には[[Kubernetes/Volume]]にファイルとして置かれるケースがあり、バイナリデータ間との変換には[[Base64]]が用いられる

---

[Secret | Kubernetes](https://kubernetes.io/ja/docs/concepts/configuration/secret/)