#[[Security]] #[[Cloud Native]] #[[Continuous Integration]]

[[GitHub Actions]] / GitLab CI/CD のジョブを[[eBPF]]でカーネルレベルに監視し、実行時の[[サプライチェーン攻撃]]を検出するオープンソースのランタイムセキュリティセンサー（"Think EDR, but for CI/CD Pipelines"）

CI/CD が握る認証情報・署名鍵・トークンを狙う攻撃に対し、汚染された依存がジョブ内で「何を実行したか」のランタイム可視性と事後調査の手段を与える

検出の仕組み:

- プロセス系譜分析 - 例として `npm install` から派生したプロセスによる認証情報アクセス
- シグナル相関 - 例として 1 ジョブ内での複数カテゴリの認証情報アクセス

構成要素:

- Sensor - eBPF ベースのランタイムモニタ
- Action - GitHub Actions 統合。run ごとにレポートと build attestation を生成
- Manager - ログを S3 / GCS / Pub/Sub 等のクラウドシンクへルーティング（データはユーザー管理下）

2026 年時点で pre-release・活発に開発中

<https://github.com/cicd-sensor/cicd-sensor>
