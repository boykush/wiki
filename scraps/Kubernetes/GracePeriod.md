#[[Kubernetes]]

[[Kubernetes/Pod]]を終了する際、プロセスが[[SIGTERM]]シグナルを受け取ってから[[SIGKILL]]で強制終了されるまでの猶予期間

デフォルトは30秒で、`terminationGracePeriodSeconds`で設定可能

主な処理フロー:

- Podが「Terminating」状態になりSIGTERMシグナルが送信される
- アプリケーションがGracePeriod内に終了すれば即座に次の段階へ
- GracePeriod経過後も実行中の場合、SIGKILLで強制終了
- [[Kubernetes/コンテナライフサイクルフック|preStop]]フックもGracePeriod内で実行される

<https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#pod-termination>
