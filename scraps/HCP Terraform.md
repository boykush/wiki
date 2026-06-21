#[[Continuous Integration]] #[[Continuous Delivery]]

HashiCorp が提供する [[Terraform]] のマネージド SaaS（旧称 Terraform Cloud、2024 に HCP 傘下へ改称）。リモート実行（run）・共有 state・VCS 連携の plan/apply・private module registry・Sentinel/OPA による policy as code を提供する。

- CLI からは `cloud {}` ブロックで接続（旧 `remote` backend 相当）。料金は managed resource 数ベースで Free 枠あり。自社環境に置く self-hosted 版は Terraform Enterprise

<https://developer.hashicorp.com/terraform/cloud-docs>
