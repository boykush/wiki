#[[Continuous Integration]]

[[GitHub Actions]] が各 workflow run の開始時に自動発行する組み込みトークン。`secrets.GITHUB_TOKEN` または `github.token` で参照でき、その run 内で GitHub API / Git 認証に使う

実体は `github-actions[bot]` という GitHub App のインストールアクセストークンで、job が終わると失効する短命トークン（最長 24 時間）

## 特徴

- 権限は workflow の `permissions` キーで制御し、最小権限の付与が推奨される
- 権限のスコープは workflow が置かれたリポジトリに限定される
- GITHUB_TOKEN で起こしたイベントは新たな workflow run をトリガしない（再帰実行の防止）。このため bot 起点で後続 CI を回すには GitHub App トークンや PAT が必要になる

<https://docs.github.com/en/actions/security-for-github-actions/security-guides/automatic-token-authentication>
