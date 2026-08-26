[[Datadog Operator]]が提供する[[Kubernetes/CRD|カスタムリソース]]。monitorやdashboard、SLOといった[[Datadog]]側のリソースをKubernetesのマニフェストとして宣言する。DDGRと略される

`spec.type`で種別を、`spec.jsonSpec`にDatadog APIのJSONペイロードをそのまま書く。APIの変更にCRD側の更新なしで追従できるため、公式は`DatadogMonitor`のようなリソース個別のCRDよりこちらを優先している

---

- [DatadogGenericResource CRD](https://docs.datadoghq.com/containers/datadog_operator/crd_ddgr/)
