#[[Continuous Integration]]

[[GitHub Projects]] を [[GitHub Actions]] から自動化する workflow を、[[GitHub App]] 認証版と [[PAT]] 認証版の2通りで示す [[GitHub]] 公式ドキュメント

- [[GITHUB_TOKEN]] は repository スコープのため Projects にアクセスできない。organization project は GitHub App、user project は classic PAT が推奨される
- workflow 内でのトークン発行には [[create-github-app-token]] を使う

<https://docs.github.com/en/issues/planning-and-tracking-with-projects/automating-your-project/automating-projects-using-actions>
