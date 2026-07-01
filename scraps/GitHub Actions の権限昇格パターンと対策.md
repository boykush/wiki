#[[Security]] #[[Continuous Integration]]

[[GitHub Actions]] における権限昇格を引き起こす 3 パターンと対策を解説した Flatt Security ブログ記事（2026 後編）

## 権限昇格の 3 パターン

- **過剰なデフォルト権限**: `permissions` 未宣言の workflow は広い権限を継承し、`workflow_dispatch` API 経由で悪意ある workflow の実行が可能
- **キャッシュポイズニング**: 10 GB 上限を悪用して正規キャッシュを退避。デフォルトブランチのキャッシュが全ブランチから読めることを利用し、issue トリガー（低権限）から release workflow（高権限）へ汚染が跨ぐ
- **`secrets: inherit`**: 再利用可能 workflow に全 secrets を暗黙で渡す設定。侵害された 1 workflow が上流全 secrets に波及

## 対策

- workflow root に `permissions: {}` を宣言し、job 単位で必要な権限のみ付与
- classic [[PAT]] 廃止 → fine-grained PAT 移行、Organization base permissions を Read に制限
- release 系 workflow でキャッシュ無効化、`secrets: inherit` を明示的 secret 渡しに変更
- [[GitHub App]] private key はクラウド KMS（例: Azure Key Vault）で管理し secrets ストアには置かない

<https://blog.flatt.tech/entry/2026-github-actions-security-part2>
