#[[Kubernetes]] #[[Security/Authentication]] #[[Security/Authorization]]

![ServiceAccount logo](https://github.com/kubernetes/community/raw/master/icons/png/resources/labeled/sa-128.png)

[[Kubernetes/Pod]]/[[Kubernetes/Deployment]]り当てられる認証・認可目的のアイデンティティ[[Kubernetes/リソース]]

Kubernetesによって管理された[[JWT]]を持つ

Kubernetes 1.24以前では同目的の表現に[[Kubernetes/Secret]]が用いられていたが、ServiceAccountによってトークン有効期限のローテーションが容易になった

---

- [Service Accounts | Kubernetes](https://kubernetes.io/docs/concepts/security/service-accounts/)
