#[[Kubernetes]] #[[Cloud Native]]

[[Kubernetes/Pod]]の終了時に[[SIGTERM]]シグナルを受け取ってから[[SIGKILL]]で強制終了されるまでの猶予時間

デフォルトは30秒で、`terminationGracePeriodSeconds`で設定可能

Podの終了プロセスは以下の順序で実行される

1. Podが「Terminating」状態になり、各[[コンテナ]]のメインプロセス（PID 1）に[[SIGTERM]]を送信
2. [[Kubernetes/コンテナライフサイクルフック|preStopフック]]が設定されている場合は実行（猶予時間に含まれる）
3. 猶予時間内にコンテナが終了しない場合、[[SIGKILL]]で強制終了

preStopフックの実行時間も猶予時間に含まれるため、例えばpreStopに10秒、猶予時間を30秒に設定した場合、アプリケーションは約20秒でSIGTERMを処理する必要がある

グレースフルシャットダウンを実現するためには、アプリケーション側でSIGTERMを受け取った際の適切な終了処理の実装と、十分な猶予時間の設定が必要

<https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#pod-termination>
