#[[Continuous Integration]] #[[Continuous Delivery]]

HashiCorp 製の [[Infrastructure as Code]] ツール。API を宣言的な設定ファイルにコード化し、インフラの作成・変更・バージョン管理を安全かつ予測可能に行う

- provider がクラウド / SaaS の API を抽象化し、低レベル（compute / storage / network）から高レベル（DNS・SaaS 機能）まで同じ記法で扱う
- 設定は HCL で記述し、現状を state ファイルで追跡。`write → plan → apply` のワークフローで `plan` が適用前の差分を提示する
- 2023-08 にライセンスを MPL 2.0 → BUSL 1.1（source-available の非 OSS）へ変更

<https://developer.hashicorp.com/terraform>
