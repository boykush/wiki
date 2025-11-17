#[[Cloud Native]]

[[Google Cloud]]の[[Google Cloud/GKE]]上で[[Kubernetes/Gateway API]]を適用する

外部Gatewayをデプロイする時は、GatewayClassに `gke-l7-global-external-managed` を指定した上で、[[Google Cloud/Certificate Manager|Certificate Manager]]のような手段でセキュリティを担保する

[[Kubernetes]] APIの `NamedAddress` に静的IPアドレスを指定することができる [方法](https://cloud.google.com/kubernetes-engine/docs/how-to/deploying-gateways?hl=ja#gateway_ip_addressing)

---

- [Gateway のデプロイ  |  Google Kubernetes Engine (GKE)  |  Google Cloud](https://cloud.google.com/kubernetes-engine/docs/how-to/deploying-gateways?hl=ja)
