---
sources:
  - resource: "https://docs.cloud.google.com/run/docs/overview/what-is-cloud-run"
  - resource: "https://docs.cloud.google.com/run/docs/about-instance-autoscaling"
---

#[[Cloud Native]]

[[Google Cloud]]上で、クラスタ管理なしで[[コンテナ]]を動かすことができる[[サーバーレス]]基盤

- service は[[Knative Serving]]と同じ形のAPI（`serving.knative.dev/v1`）を持つ
- service は[[Knative Serving]]と同じくscale to zeroするため、0台からの最初のリクエストはコールドスタートを待つ。最小インスタンス数で常に起動しておく台数を確保できるが、待機中も費用がかかる
