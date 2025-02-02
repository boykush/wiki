#[[Continuous Delivery]]

[[Kubernetes]]の[[Pod]]上で定期的に実行される[[コンテナ]]の診断、ヘルスチェック

チェックの方法として以下の4つがある
- [[gRPC]]
- [[HTTP]]
- [[TCP]] Socket
- Exec
  - 任意のコマンドを実行し、成功の返り値0を期待する

Probeには戦略を示すようないくつかの種類が存在する

---

- [Podのライフサイクル | Kubernetes](https://kubernetes.io/ja/docs/concepts/workloads/pods/pod-lifecycle/#container-probes)