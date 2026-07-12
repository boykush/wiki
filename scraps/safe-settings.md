#[[Continuous Integration]]

リポジトリ設定を policy-as-code で組織横断に宣言・適用する [[GitHub App]]（Probot ベース）。admin リポジトリに設定を集中管理し、各 repo の実設定を GitHub API 経由で宣言状態へ収束させる、repo 設定版の [[Infrastructure as Code]]。[[Platform Engineering]] の guardrails 実装の一つ

- 設定は admin repo の 3 階層（`.github/settings.yml`=org / `suborgs/*.yml` / `repos/*.yml`）で各 repo にマージ適用、優先度は repo > suborg > org
- full sync（CRON）で drift を検出・修正、PR では nop モードで dry-run 差分を提示
- 管理対象は GitHub API で扱う設定のみ（branch protection / labels / collaborators / teams / topics / [[Repository custom properties|custom properties]] / environments / rulesets 等）。**ファイル内容は扱えず** `.github/workflows/*.yml` の配布はできない（[[GitHub Actions]] の強制は ruleset / [[require workflows]] 経由）
- **Organization 専用**で個人アカウントでは動かない

<https://github.com/github/safe-settings>
