#[[Continuous Integration]]

[[Terraform GitHub provider]] の resource で、[[GitHub App]] のインストールがアクセスできる repo を宣言管理する（`installation_id` ＋ `repository`）。App 登録自体は TF では作れないので、これは既存インストールの repo 付け外しを IaC 化するもの。

<https://registry.terraform.io/providers/integrations/github/latest/docs/resources/app_installation_repository>
