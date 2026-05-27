#[[Security]]

[[OWASP]] Incubating Project の開発者向け統合セキュリティプラットフォーム。AGPL-3.0、[[Go]] + [[PostgreSQL]] 実装

シークレットスキャン / [[SAST]] / SCA / [[Infrastructure as Code|IaC]] / [[コンテナ]]スキャン / ライセンスチェックを単一 CLI に統合し、[[サプライチェーン攻撃]] 対策まで含めて開発ワークフローに組み込む

## 主な機能

- 標準準拠スキャナ（[[Trivy]] / Grype / Semgrep）の出力を取り込み
- CVSS + EPSS + component depth に基づくリスク優先順位付け
- SBOM / VEX のライブ管理、依存パッケージの Dependency Firewall（npm / [[Go]] / [[Python]]）
- OPA/Rego によるポリシー強制、GitHub / GitLab / Jira との双方向同期

オープン標準（SBOM / VEX / [[SARIF]] / SLSA / in-toto）を中核に据える

<https://devguard.org/>
<https://github.com/l3montree-dev/devguard>
