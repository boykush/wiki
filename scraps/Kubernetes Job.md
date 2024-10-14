#[[Cloud Infrastructure]]

[[Kubernetes]]において[[Pod]]を1つ以上作成し、作成したPodがJobとして正常終了するまで再試行をすることができる。

`.spec.completions`, `.spec.parallelism` の指定によって並列実行の制御をすることも可能

---
[Job | Kubernetes](https://kubernetes.io/ja/docs/concepts/workloads/controllers/job/)
