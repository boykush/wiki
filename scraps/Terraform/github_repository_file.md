#[[Continuous Integration]]

[[Terraform GitHub provider]] の resource で、GitHub リポジトリ内の単一ファイルの内容を宣言管理する（`repository` / `file`（パス）/ `content` / `branch` を指定し commit として反映）。

- `.github/workflows/*.yml` を対象にすれば [[GitHub Actions]] のワークフローを配布でき、`for_each` で複数リポジトリへ撒ける
- コピーして終わりではなく宣言内容へ収束し続ける点が要: 配布先での手動編集も drift として plan で検出され apply で是正される

<https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_file>
