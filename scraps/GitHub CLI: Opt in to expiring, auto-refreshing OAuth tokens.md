---
type: Blog
resource: "https://github.blog/changelog/2026-10-21-github-cli-opt-in-to-expiring-auto-refreshing-oauth-tokens/"
---

#[[Security/Authorization]]

[[GitHub]] による GitHub Changelog の記事（2026年10月21日）。GitHub CLI v2.103.0 で、短命なアクセストークンとローテーションするリフレッシュトークンを保存し、`gh` が自動で更新する方式を public preview の opt-in（`gh auth login --expiring`）として提供すると発表している。今は opt-in だが、いずれ既定にすると予告している

- [[OAuth2]] のリフレッシュトークンで寿命を短くする狙いは、漏れたアクセストークンが無期限ではなく数時間で使えなくなること。持っていれば誰でも使える [[Bearerトークン]] の漏洩時の被害を時間で区切る
- [[Git]] の HTTPS 通信では `gh auth setup-git` で `gh` を credential helper にし、git 2.46 以上で期限切れの認証情報がキャッシュに残らないようにすることを強く推奨している
- github.com と、[[GitHub Enterprise Cloud]] の ghe.com で使える。もう一方の GHES は 3.23 から対応し、それより前は期限の無いトークンに戻る
