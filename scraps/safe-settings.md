#[[Continuous Integration]]

リポジトリ設定を policy-as-code で組織横断に宣言・適用する [[GitHub App]]（Probot ベース）。admin リポジトリに設定を集中管理し、各 repo の実設定を GitHub API 経由で宣言状態へ収束させる、repo 設定版の [[Infrastructure as Code]]。[[Platform Engineering]] の guardrails 実装の一つ

- 管理対象は GitHub API で扱う設定のみで、**ファイル内容は扱えない**。[[Repository custom properties|custom properties]] や ruleset は扱えるが `.github/workflows/*.yml` の配布はできず、[[GitHub Actions]] の強制は ruleset / [[require workflows]] 経由になる

<https://github.com/github/safe-settings>
