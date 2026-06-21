#[[Continuous Integration]]

[[Terraform GitHub provider]] の resource で、org 単位の ruleset を宣言する。`conditions` の `repository_name`(include/exclude) または `repository_id` で対象 repo 群を絞る。

- `rules` に各種ルールを宣言でき、特に **org/enterprise 専用**の required_workflows（[[require workflows]]）を扱えるのが repo 単位版との違い

<https://registry.terraform.io/providers/integrations/github/latest/docs/resources/organization_ruleset>
