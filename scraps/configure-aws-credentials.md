#[[Security]] #[[Continuous Integration]]

[[GitHub Actions]] から [[AWS]] の一時認証情報を取る公式 Action。GitHub が署名した [[OIDC]] トークンを受け取り、`sts:AssumeRoleWithWebIdentity` で role と交換して後続の step に渡す。長命な access key を secrets に置かずに済む。job に `permissions: id-token: write` が要る

- 既定では `AWS_ACCESS_KEY_ID` / `AWS_SECRET_ACCESS_KEY` / `AWS_SESSION_TOKEN` を job の環境に export し、値をマスクして job の終わりに片付ける
- `output-credentials: true` と `output-env-credentials: false` を組むと step の出力だけに留まり、**後続 step の環境には置かれない**。任意コードを実行する step が続く場合の分離になる
- 何を通すかを決めるのは Action ではなく role の trust policy。AWS が条件に使えるのは `sub` と `aud` だけで、`job_workflow_ref` などは条件キーにできない——書いても作成時はエラーにならず、評価時に全拒否になる

<https://github.com/aws-actions/configure-aws-credentials>
