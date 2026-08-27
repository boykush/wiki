#[[Continuous Integration]]

[[Terraform GitHub provider]] の resource で、GitHub リポジトリ内の単一ファイルの内容を宣言管理する。

- `.github/workflows/*.yml` を対象にすれば [[GitHub Actions]] のワークフローを配布でき、`for_each` で複数リポジトリへ撒ける

<https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_file>
