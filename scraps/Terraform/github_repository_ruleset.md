#[[Continuous Integration]]

[[Terraform GitHub provider]] の resource で、repo 単位の ruleset を宣言する（`name` / `target`(branch|tag) / `enforcement`(active|evaluate|disabled) / `conditions`(ref_name) / `rules` / `bypass_actors`）。

- `rules` に required_status_checks（[[require status checks]]）・pull_request（承認人数 `required_approving_review_count` 等）などを宣言。repo レベルなので個人 owner でも使える（public は無料）

<https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_ruleset>
