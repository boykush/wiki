#[[Cloud Native]] #[[Continuous Delivery]]

[[CNCF]] sandboxプロジェクトの[[Kubernetes]]インフラ自動化ツールチェーン

- KRM (Kubernetes Resource Model) ファイル（YAMLマニフェスト）をパッケージとして管理する[[Infrastructure as Code]]ツール
- **Configuration as Data**: 設定をコードではなく純粋なデータとして扱い、バージョン管理・diff・レビューを分離
- **WYSIWYG原則**: パッケージの内容がそのままクラスタにデプロイされる（テンプレート展開等の out-of-band 変換なし）
- validator・mutator によるパイプラインで設定の変換・検証を自動化
- [[Helm]] / [[Kustomize]] / [[Argo CD]] など既存ツールチェーンとの統合をサポート
- [[GitOps]] ワークフロー・マルチクラスタ・シークレット管理等を対象にv1 API安定化を目指す

<https://www.cncf.io/blog/2026/07/02/reintroducing-kpt-your-toolchain-for-infrastructure-automation/>
