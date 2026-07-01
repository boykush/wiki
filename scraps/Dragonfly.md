#[[Cloud Native]] #[[Network]]

<https://www.cncf.io/blog/2026/06/30/dragonfly-v2-5-0-is-released/>

[[CNCF]] プロジェクトのクラウドネイティブな P2P ファイル配信インフラ

[[Kubernetes]] クラスタ内でのコンテナイメージや AI モデルなどの大規模アーティファクト配信を P2P 転送で高速化する

- Manager・Scheduler・Client（dfdaemon）の 3 コンポーネント構成
- containerd との統合によりレジストリのプロキシ設定を一元管理できる
- Kubernetes Webhook（dragonfly-injector）で Pod への P2P 機能注入を自動化
