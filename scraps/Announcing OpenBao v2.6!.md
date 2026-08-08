#[[Security]]

OpenBao v2.6 のリリース記事。namespace 単位の追加 Shamir seal と、プラグイン間通信のためのワークフロー機能を新たに追加

- **Namespace Sealing**: namespace 作成時に追加の Shamir seal とスコープ付き barrier keyring を構築し、テナントごとに異なる鍵材料でストレージを分離。テナントは他テナントに影響を与えず運用者のアクセスを seal operation で無効化できる
- **Workflows**: `sys/workflows` 配下の新エンドポイントで、プラグイン間通信向けのマルチリクエストワークフローを作成・実行可能に
- **Auto Unseal Plugins**: 新たな kms プラグインタイプにより auto-unseal を外部バイナリプラグインとして配布可能に
- 他に distroless コンテナイメージ variant `openbao-distroless` と、認証済みの root token 生成エンドポイントを追加

<https://openssf.org/blog/2026/08/06/announcing-openbao-v2-6/>

[[Blog|ブログ]]
