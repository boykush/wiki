---
type: Blog
resource: "https://github.blog/changelog/2026-10-13-github-app-improvements-for-least-privilege-and-management/"
---

#[[Security/Authorization]]

[[GitHub]] による GitHub Changelog の記事（2026年10月13日）。classic な [[PAT]] からの移行、[[GitHub App]] の管理のしやすさ、機微な権限を求めずに済むことを狙い、権限の追加、リポジトリ管理者による承認済み App への追加、`offline_access`、他の App の詳細の取得、認証情報を集めたタブの5つの改善を発表している

- [[最小権限の原則|最小権限]]に沿い、リポジトリの作成だけを許す `repository_creation:write` を新設した。これまでは削除や移管まで含む `repository_administration:write` が要った。インストールにリポジトリを足し外しする `installation_repositories:write` もでき、どちらも fine-grained PAT と GitHub App に付けられる
- `offline_access` を要求すると、期限付きのユーザーアクセストークンと一緒にリフレッシュトークンを受け取れる。期限切れを無効にしていた App が、期限付きのトークンへ段階的に戻れるようにするためのもの。[[OAuth2]] と同じ仕組みで、GHES は 3.23 から対応する
- 認証情報（client secret と鍵ペア）を専用のタブにまとめたのは、今後の workload federation の認証情報を置く場所を作るためだとしている
