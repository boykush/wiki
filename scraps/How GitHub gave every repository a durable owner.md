#[[Security]]

[[GitHub]] 社内のリポジトリオーナーシップ刷新事例記事。14,000+ リポジトリのうち約 11,000 のアクティブリポジトリに対し、45日以内に全リポジトリへ検証済みオーナーを付与し、約 8,000 リポジトリをアーカイブした取り組みを公開している

- 課題の発端: [[How GitHub used secret scanning to reach inbox zero|Secret Scanning のリメディエーション]]でオーナー不明リポジトリへのルーティングが困難だったこと
- 解決策: GitHub custom properties に `ownership-type`（Service Catalog / Team / Hubber Handle）と `ownership-name` の 2 プロパティを追加し、オーナーシップをファーストクラス属性として管理
- 実装: [[GitHub App]] + Kubernetes CronJob で定期実行。30日猶予後もオーナーなしのリポジトリは自動アーカイブ（可逆・非破壊）
- 教訓: 土曜朝の初回実行は失敗（グローバル企業は常時オンライン）。low water mark（一括アーカイブ数の上限閾値）と @-mention 通知の追加はインシデントから学んだ設計
- 成果: アクティブリポジトリ約 3,000 件に整理し新規作成時もオーナーシップを必須化

<https://github.blog/security/application-security/how-github-gave-every-repository-a-durable-owner/>

[[Blog|ブログ]]
