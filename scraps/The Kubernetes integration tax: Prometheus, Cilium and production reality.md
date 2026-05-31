#[[Cloud Native]] #[[Platform Engineering]]

<https://www.cncf.io/blog/2026/05/28/the-kubernetes-integration-tax-prometheus-cilium-and-production-reality/>

[[CNCF]] ブログ（著者: Rishi Mondal, Obmondo SRE）。複数の[[CNCF]]プロジェクトを本番環境で統合する際の隠れた運用コストを「Integration Tax」と定義する

プラットフォームチームは時間の約80%をツールの配線に費やす

よくある統合衝突ポイント:

- [[Prometeus]] + [[Cilium]]: ServiceMonitor 未設定により Cilium メトリクスが Prometheus から不可視
- cert-manager + Ingress: HTTP→HTTPS リダイレクトが ACME バリデーションをブロックし TLS 証明書更新が無言で失敗
- [[Prometeus]] + kubelet: 重複スクレイプパスによる `PrometheusDuplicateTimestamps` 誤アラート

推奨アーキテクチャ: 二リポジトリ [[GitOps]] 分割（Platform repo + Config repo）を [[Argo CD]] で同期。Cluster API でマルチクラウドを統一

実践知: Jsonnet でモニタリングをコード生成、[[Kubernetes/Network policy]] を Helm チャートに埋め込む、Sealed Secrets で Git に暗号化コミット
