#[[Kubernetes]]

[[Kubernetes/Pod]]を終了する際に、プロセスが正常にシャットダウンするために待機する時間（デフォルト30秒）

## 終了プロセス

1. Podが `Terminating` 状態にマークされる
2. [[SIGTERM]]シグナルが各[[コンテナ]]のメインプロセスに送信される
3. Grace Period中に[[Kubernetes/コンテナライフサイクルフック|preStop]]フックと並行して正常終了を待機する
4. Grace Periodが経過しても終了しない場合、[[SIGKILL]]で強制終了する

## 設定

`terminationGracePeriodSeconds` で秒数を指定可能。アプリケーションがGrace Period前に終了した場合、Kubernetesは即座に次のステップに移行する

```yaml
spec:
  terminationGracePeriodSeconds: 60
```

削除時にも指定可能:

```bash
kubectl delete pod <pod-name> --grace-period=60
```

<https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#pod-termination>
<https://cloud.google.com/blog/products/containers-kubernetes/kubernetes-best-practices-terminating-with-grace>
