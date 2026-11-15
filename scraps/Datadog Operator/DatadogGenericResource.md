[[Datadog Operator]]が提供する[[Kubernetes/CRD|カスタムリソース]]。monitorやdashboard、[[SLO]]といった[[Datadog]]側のリソースを[[Kubernetes]]のマニフェストとして宣言する。DDGRと略される

`spec.type`で種別を、`spec.jsonSpec`にDatadog APIの[[JSON]]ペイロードをそのまま書く。APIの変更にCRD側の更新なしで追従できるため、公式は`DatadogMonitor`のようなリソース個別のCRDよりこちらを優先している

---

- [DatadogGenericResource CRD](https://docs.datadoghq.com/containers/datadog_operator/crd_ddgr/)
