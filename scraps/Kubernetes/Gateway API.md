#[[API Architecture]] #[[Network]] #[[Kubernetes]] #[[Cloud Native]]

[[OSI参照モデル]]のL4/L7を扱う[[Kubernetes]]公式の[[APIゲートウェイ]]

- GatewayClass
- Gateway
- HTTPRoute

の3つを定義し実装する

GatewayClassは[[Google Cloud/GKE]]のようなクラウドサービスが用意するケースがあり、外部or内部を選択できる

---

- [Introduction - Kubernetes Gateway API](https://gateway-api.sigs.k8s.io/)