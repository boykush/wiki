#[[Cloud Native]]

[[Kubernetes]]において、[[Kubernetes/ReplicaSet]]やそれを内包する[[Kubernetes/Deployment]]のようなStatelessな[[Kubernetes/Pod]]起動に対し、状態を保持し同一性をもつStatefulな[[Kubernetes/Pod]]を扱うことができる機能

[[Kubernetes/PersistentVolume]]によってオブジェクトやIPアドレスのような[[Network|ネットワーク]]の状態がストレージ保持される

---

- [StatefulSets | Kubernetes](https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/)