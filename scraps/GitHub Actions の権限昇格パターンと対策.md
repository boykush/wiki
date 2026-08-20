#[[Security]] #[[Continuous Integration]]

[[GitHub Actions]] における権限昇格を引き起こす 3 パターンと対策を解説した Flatt Security ブログ記事（2026 後編）

- 3 パターンは、過剰なデフォルト権限（`permissions` 未宣言）、キャッシュポイズニング（低権限トリガーから高権限 workflow への汚染の跨ぎ）、`secrets: inherit` による全 secrets の暗黙継承
- 対策の軸は workflow root での `permissions: {}` 宣言と job 単位の最小権限付与、classic [[PAT]] の fine-grained 移行、release 系 workflow でのキャッシュ無効化
- [[GitHub App]] private key は secrets ストアに置かずクラウド KMS で管理する

<https://blog.flatt.tech/entry/2026-github-actions-security-part2>
