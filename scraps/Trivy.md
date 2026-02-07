#[[Security]] #[[Cloud Native]] #[[Continuous Integration]]

[[コンテナ]]イメージ、[[Kubernetes]]、[[Infrastructure as Code|IaC]]、リポジトリを対象とした包括的な脆弱性・設定ミス・シークレットスキャナー

Aqua Securityによって開発されたオープンソースツール

主な機能:

- 脆弱性スキャン - コンテナイメージ、ファイルシステム、gitリポジトリ
- [[Infrastructure as Code|IaC]]設定ミス検出 - [[Dockerfile]]、[[Kubernetes]]マニフェスト、Terraformなど
- シークレット検出 - APIキー、パスワード等の機密情報
- SBOM生成 - ソフトウェア部品表の作成と検出
- ライセンススキャン

[[DevSecOps]]のシフトレフトセキュリティを実現し、[[Continuous Integration|CI]]/[[Continuous Delivery|CD]]パイプラインに統合可能

[[SAST]]ツールの一種として静的解析を実行する

<https://trivy.dev/>
<https://github.com/aquasecurity/trivy>
