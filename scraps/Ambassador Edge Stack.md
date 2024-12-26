#[[API Architecture]] #[[Cloud Native]]

![](https://avatars.githubusercontent.com/u/9270257?s=200&v=4)

[[Kubernetes]]ネイティブな[[APIゲートウェイ]]、[[Helm]]を利用してインストールできる

[[CNCF]] incubating projectである[Emissary-Ingress](https://www.cncf.io/projects/emissary-ingress/)の開発者たちが継続して開発している

アーキテクチャの中核には[[Envoy]] Proxyを利用しており、manifestファイルから受け取った設定をEnvoy configurationにパースする

[[Datadog]]とのインテグレーションが可能 [Ambassador API Gateway](https://docs.datadoghq.com/ja/integrations/ambassador/)

---

- [Edge Stack quick start | Edge Stack](https://www.getambassador.io/docs/edge-stack/latest/tutorials/getting-started)
- [The Edge Stack architecture | Edge Stack](https://www.getambassador.io/docs/edge-stack/latest/topics/concepts/architecture)