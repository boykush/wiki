#[[Security]] #[[Continuous Integration]]

[[GitHub App]] の private key を [[Amazon/KMS]] に取り出せない形で入れておき、[[JWT]] の署名だけを KMS に任せてインストールアクセストークンを発行する [[GitHub Actions]] の Action（[[suzuki-shunsuke|@suzuki-shunsuke]] 製）。secrets に置いた private key には期限がなく、漏れると無期限にトークンを発行され続けるので、その経路を塞ぐ

- [[create-github-app-token]] と入出力をそろえた置き換えで、`private-key` を `kms-key-id` に替えて移行する
- `role-to-assume` を渡すと、GitHub の [[OIDC]] トークンによる AWS 認証を Action の中で済ませ、その認証情報を後続の step に渡さない

<https://github.com/suzuki-shunsuke/create-github-app-token-aws-kms>
