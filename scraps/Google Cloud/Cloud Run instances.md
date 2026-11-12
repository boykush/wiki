---
sources:
  - resource: "https://cloud.google.com/blog/products/serverless/introducing-cloud-run-instances"
  - resource: "https://docs.cloud.google.com/run/docs/instances/create-and-manage-instances"
  - resource: "https://docs.cloud.google.com/run/docs/configuring/cpu-allocation"
---

#[[Cloud Native]]

[[Google Cloud/Cloud Run]] の service と異なり、オートスケールせず1台だけで稼働する。その代わり安価な共有 vCPU が割り当てられ、1 vCPU・1 GiB を30日動かしても $5.70 程度にコストを抑えることができる

- [[Google Cloud/Cloud Run]] の service はリクエスト単位の課金だと処理中しか CPU が割り当てられないため、リクエストと無関係に動き続ける処理は instances に向く。リクエストで動く処理は、0台まで縮み台数も増減する service のほうが合う
