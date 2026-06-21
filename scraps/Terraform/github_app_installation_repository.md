#[[Continuous Integration]]

[[Terraform GitHub provider]] の resource で、[[GitHub App]] のインストールがアクセスできる repo を宣言管理する（`installation_id` ＋ `repository`）。App 登録自体は TF では作れないので、これは既存インストールの repo 付け外しを IaC 化するもの。

- install の repo 操作は **classic [[PAT]]（`repo` scope）専用**で、App 認証（installation token）も fine-grained PAT も不可（403）。PAT を避けるなら installation は UI 管理にして TF 外へ

<https://registry.terraform.io/providers/integrations/github/latest/docs/resources/app_installation_repository>
