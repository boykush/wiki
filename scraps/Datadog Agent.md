#[[Observability]]

各ホストやコンテナに常駐し、[[テレメトリー]]を収集して[[Datadog]]へ送るソフトウェア

各ホストの環境別にいくつかのインストール手段が用意されている

[[Kubernetes]]では[[Kubernetes/DaemonSet]]として各ノードへ配置し、クラスタ全体を担当するCluster Agentと組みで動かす

[Kubernetes に Datadog Agent をインストールする](https://docs.datadoghq.com/ja/containers/kubernetes/installation/?tab=datadogoperator)

---

<https://docs.datadoghq.com/ja/agent/?tab=Linux>
