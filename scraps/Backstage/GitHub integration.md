[[Backstage]] が [[GitHub]]（github.com / GitHub Enterprise）に接続するための共有設定。`app-config.yaml` 直下の `integrations.github` に host と認証情報を置き、catalog や scaffolder など複数の plugin が共通で使う

- backend の認証は [[PAT]] か [[GitHub App]]。GitHub App は rate limit が高く、user や bot account ではなく application として振る舞える

<https://backstage.io/docs/integrations/>
<https://backstage.io/docs/integrations/github/locations>
<https://backstage.io/docs/integrations/github/github-apps>
