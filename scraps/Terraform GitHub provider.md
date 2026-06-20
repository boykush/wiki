#[[Continuous Integration]]

[[GitHub]] を IaC で宣言管理する公式 [[Terraform]] provider（`integrations/github`）。repo・team・branch protection・ruleset・Actions secrets/variables・org settings・webhook など 80+ リソースを HCL で扱う。Terraform / OpenTofu 両対応。

- `owner` に user / org を指定（個人 owner も可）。認証は [[GitHub App]] 経由（`app_auth` で PEM からトークン生成、または外部発行した installation token を渡す）か [[PAT]] で、GHES は `base_url` で指定

<https://registry.terraform.io/providers/integrations/github/latest/docs>
