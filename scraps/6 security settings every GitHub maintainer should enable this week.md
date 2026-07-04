#[[Security]] #[[Continuous Integration]]

[[GitHub]] リポジトリのメンテナーが今すぐ有効化すべき 6 つの無料セキュリティ設定をまとめた GitHub Blog 記事。

- **SECURITY.md**: 脆弱性報告の窓口をリポジトリに明示し、公開 Issue でのゼロデイ漏洩を防ぐ
- **プライベート脆弱性レポート**: セキュリティ研究者が非公開で Advisory を提出できる。開示タイミングをメンテナーが制御
- **Secret scanning + push protection**: API キー・トークンの push 前ブロック
- **Dependabot + dependency review**: 依存の既知脆弱性をアラートし、PR レビュー画面でセキュリティ情報を表示
- **Code scanning**: PR ごとに [[SAST]] を自動実行、SQL インジェクション・コマンドインジェクション等を検出。結果は [[SARIF]] 形式で Security タブに集約
- **Branch protection**: デフォルトブランチへの直接 push を禁止し PR 承認を必須化。[[require status checks]] と組み合わせ [[safe-settings]] で組織全体に適用可

<https://github.blog/security/6-security-settings-every-github-maintainer-should-enable-this-week/>

[[Blog|ブログ]]
