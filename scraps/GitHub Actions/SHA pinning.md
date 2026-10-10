#[[Security]] #[[Continuous Integration]]

[[GitHub Actions]] の設定「Require actions to be pinned to a full-length commit SHA」。有効にすると、action を完全なコミット [[SHA]] で指定していない workflow は失敗する

- [[zizmor/unpinned-uses]] や [[pinact]] が検出・修正する問題を、GitHub の設定として強制する
- repository・organization・enterprise の単位で設定でき、[[Terraform GitHub provider]] では `github_actions_repository_permissions` の `sha_pinning_required` にあたる

<https://github.blog/changelog/2025-08-15-github-actions-policy-now-supports-blocking-and-sha-pinning-actions/>
