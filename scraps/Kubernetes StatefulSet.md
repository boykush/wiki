#[[Cloud Native]]

[[Kubernetes]]において、[[Kubernetes ReplicaSet|ReplicaSet]]やそれを内包する[[Kubernetes Deployment|Deployment]]のようなStatelessな[[Pod]]起動に対し、状態を保持し同一性をもつStatefulな[[Pod]]を扱うことができる機能

[[PersistentVolume]]によってオブジェクトやIPアドレスのような[[Network|ネットワーク]]の状態がストレージ保持される

---

- [StatefulSets | Kubernetes](https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/)