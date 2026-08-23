#[[Continuous Integration]]

[[GitHub Projects]] を [[GitHub Actions]] から自動化する手順を示した [[GitHub]] 公式ドキュメント。PR が ready for review になったら project に追加し Status と日付フィールドを設定する workflow を、[[GitHub App]] 認証版と [[PAT]] 認証版の2通りで提示する

- [[GITHUB_TOKEN]] は repository スコープのため Projects にアクセスできない。organization project は GitHub App、user project は classic PAT が推奨される
- GitHub App には organization projects の read & write が必要で、repository projects の権限では足りない。workflow 内でのトークン発行には [[create-github-app-token]] を使う

<https://docs.github.com/en/issues/planning-and-tracking-with-projects/automating-your-project/automating-projects-using-actions>
