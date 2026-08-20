#[[Security]]

[[OWASP]] Incubating Project の開発者向け統合セキュリティプラットフォーム。AGPL-3.0、[[Go]] + [[PostgreSQL]] 実装

シークレットスキャン / [[SAST]] / SCA / [[Infrastructure as Code|IaC]] / [[コンテナ]]スキャン / ライセンスチェックを単一 CLI に統合し、[[サプライチェーン攻撃]] 対策まで含めて開発ワークフローに組み込む

- [[Trivy]] など標準準拠スキャナの出力取り込み、依存パッケージの Dependency Firewall（[[npm]] / [[Python]] など）、[[GitHub]] / GitLab / Jira との双方向同期を備える
- オープン標準（[[SBOM]] / VEX / [[SARIF]] / SLSA / in-toto）を中核に据える

<https://devguard.org/>
<https://github.com/l3montree-dev/devguard>
