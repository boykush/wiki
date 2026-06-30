#[[Cloud Native]]

[[etcd]]クラスタを管理する[[Kubernetes/Operator]]。CozyStack に寄贈され、v1alpha2 API でアーキテクチャを刷新。

- [[Kubernetes/StatefulSet]]ベースのメンバー管理から etcd Membership API（MemberAdd/Promote/Remove）へ移行
- EtcdMember リソースを導入し、Pod・PVC を独立して Reconcile
- Webhook による検証を[[Kubernetes/CRD]]組み込みの CEL ルールに移行
- API グループが `etcd-operator.cozystack.io` に変更、`kubectl-etcd` プラグインを同梱

<https://www.cncf.io/blog/2026/06/29/etcd-operator-joins-cozystack-with-a-new-v1alpha2-api/>
