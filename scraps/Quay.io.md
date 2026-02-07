#[[Cloud Native]] #[[Security]] #[[Continuous Integration]]

[[Open Container Initiative|OCI]]仕様準拠のコンテナイメージレジストリ

Red Hatが提供し、3つの提供形態がある

- Quay.io: フルマネージド型ホスティングサービス（公開リポジトリは無料）
- Red Hat Quay: オンプレミスまたはプライベートクラウド環境向け
- Project Quay: オープンソース版（Apache 2.0ライセンス）

主な特徴

- [[Docker]] Registry Protocol v2、Docker Manifest Schema v2.1/v2.2、OCI spec v1.1対応
- イメージ脆弱性スキャン（Clairによる）
- アクセス制御（LDAP、OIDC、Google、GitHubによる認証）
- ACL、チーム管理、監査ログ

<https://www.projectquay.io/>
<https://www.redhat.com/en/technologies/cloud-computing/quay>
