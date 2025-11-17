#[[Kubernetes]]

[[Kubernetes/Probe]]においてアプリケーションの起動にとても長い時間がかかる場合、Startup Probeが成功した後に[[Kubernetes/Liveness Probe]]または[[Kubernetes/Readiness Probe]]を開始するような設定ができる

- [startupProbeをいつ使うべきか？](https://kubernetes.io/ja/docs/concepts/workloads/pods/pod-lifecycle/#when-should-you-use-a-startup-probe)
- [Startup Probeを使用して、起動の遅いコンテナを保護する](https://kubernetes.io/ja/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/#define-readiness-probes)
