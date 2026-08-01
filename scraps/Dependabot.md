#[[Security]] #[[Continuous Integration]]

[[GitHub]] の依存関係を安全・最新に保つ機能群。公式 Doc は "Find and fix vulnerable dependencies you rely on with Dependabot" と説明し、脆弱な依存の検出・修正と依存の最新化を Pull Request ベースで自動化する。

## 機能

- **Dependabot alerts** — リポジトリの依存に既知の脆弱性があると通知。[[GitHub Advisory Database]] のアドバイザリ（CVE / GHSA / CVSS）を情報源とする
- **Dependabot security updates** — 既知の脆弱性を持つ依存を更新する Pull Request を自動作成
- **Dependabot version updates** — 依存を最新に保つ Pull Request を自動作成。`.github/dependabot.yml` で設定する

<https://docs.github.com/en/code-security/dependabot>
