 #[[Kubernetes]] #[[Cloud Native]]

![Job logo](https://github.com/kubernetes/community/raw/master/icons/png/resources/labeled/job-128.png)

[[Kubernetes/Pod]]を1つ以上作成しプロセスを実行する[[Kubernetes/リソース]]

作成したPodがJobとして正常終了するまで再試行をすることができる。

`.spec.completions`, `.spec.parallelism` の指定によって並列実行の制御をすることも可能

---
[Job | Kubernetes](https://kubernetes.io/ja/docs/concepts/workloads/controllers/job/)
