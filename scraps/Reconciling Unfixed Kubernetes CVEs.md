#[[Security]] [[Kubernetes]]

Kubernetes Security Response Committee (SRC) による、修正されない古い CVE のレコード訂正を発表したブログ記事（変更は 2026-06-01 に反映）

訂正後は [[Trivy]] などの脆弱性スキャナーが新たに検出する可能性があるため注意が必要

対象 CVE:
- **CVE-2020-8561** (Medium 4.1): kube-apiserver が AdmissionWebhook の HTTP リダイレクトを追従する問題。ログレベル 10 未満への制限と動的プロファイリング無効化が緩和策
- **CVE-2020-8562** (Low 3.1): API サーバプロキシの DNS TOCTOU 競合による IP 制限バイパス。ローカル DNS キャッシュ（dnsmasq 等）が緩和策
- **CVE-2021-25740** (Low 3.1): Endpoints/EndpointSlice を利用した [[Kubernetes/Namespace]] 横断転送。[[RBAC]] で write 権限制限が緩和策（Kubernetes 1.22 以降の default ClusterRole は権限除外済み）
- **CVE-2020-8554**: バージョン番号フォーマットの標準化のみ

いずれも実装バグではなく Kubernetes アーキテクチャのトレードオフによる「unfixed」の脆弱性で、管理的緩和策の継続が必要

<https://kubernetes.io/blog/2026/05/26/reconciling-unfixed-kubernetes-cves/>
