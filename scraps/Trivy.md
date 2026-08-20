#[[Security]] #[[Cloud Native]] #[[Continuous Integration]] #[[Continuous Delivery]]

Aqua Securityが開発するオープンソースの脆弱性・設定ミス・シークレットスキャナー。[[コンテナ]]イメージ、[[Kubernetes]]、[[Infrastructure as Code|IaC]]、gitリポジトリを対象とする

- [[SAST]]ツールの一種として[[DevSecOps]]のシフトレフトセキュリティを担い、CIパイプラインに統合できる
- [[Dockerfile]]や[[Terraform]]の設定ミス検出、シークレット検出、SBOM生成にも対応する
- `--format sarif` で [[SARIF]] 出力に対応し GitHub Code Scanning に取り込める

<https://trivy.dev/>
<https://github.com/aquasecurity/trivy>
