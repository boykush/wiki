## Personal Access Token

#[[Security/Authentication]]

[[GitHub]] のユーザー本人として API / Git 認証に使う個人向けアクセストークン。パスワードの代わりとなる認証情報で、HTTPS での Git 操作や `gh` CLI、外部サービスからの GitHub 連携に用いる

## 特徴

- classic と fine-grained の 2 種類があり、fine-grained はリポジトリ単位・権限単位でスコープと有効期限を絞れる
- ユーザー権限を継承する長命トークンになりやすく、[[最小権限の原則|最小権限]]と短い有効期限の設定が推奨される

<https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens>
