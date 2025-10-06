## Kubernetes Event-driven Autoscaling

![](https://keda.sh//img/logos/keda-icon-color.png)

イベントをトリガーにAutoscalingを行う[[サーバーレス]]な[[Kubernetes]]の拡張ツール

[[Kubernetes/HorizontalPodAutoscalar|HPA]]等の標準のKubernetesコンポーネントと連携して、上書きや重複なしに動作する

ワークロードの `triggers` にイベントトリガーを記述可能で、トリガーのタイプには例として以下のようなものがある
- [[Cron]]
- [[Datadog]]
- [[MySQL]]

[[CNCF]] graduated project

---

- [KEDA | Kubernetes Event-driven Autoscaling](https://keda.sh/)