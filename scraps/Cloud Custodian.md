---
type: CLI
---

#[[Cloud Native]]

クラウド上のリソースに対する policy を記述し、制御できるオープンソース。たとえば未使用のまま放置されているリソースを検知して削除できる。[[CNCF]] incubating project

- policy は cron や CLI で走査として実行するか、[[AWS]] Lambda などの serverless function として配備してイベント駆動で適用する
- 対象はクラウド上にすでに在るリソースで、[[Terraform]] などで作られたかどうかを問わず、コードの側は変えない
- コスト最適化は用途の1つで、[[FinOps]] では未使用リソースの整理や業務時間外の停止に使う

<https://cloudcustodian.io/>
