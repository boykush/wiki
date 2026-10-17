#[[Continuous Integration]]

[[GitHub Actions]] の workflow 内で [[GitHub App]] のインストールアクセストークンを発行する公式 Action `actions/create-github-app-token`。App の ID と private key を渡すと、対象を絞ったトークンを払い出す

- デフォルトの [[GITHUB_TOKEN]]（権限が制限的で後続 CI をトリガできない）や [[PAT]] の代替として使い、GitHub App の bot 名義で commit / comment できる

<https://github.com/actions/create-github-app-token>
