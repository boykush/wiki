#[[Security]]

2026年8月4日、npm ユーザー `jaredwray` が管理に関与する複数の [[npm]] パッケージへ悪性コードが注入された[[サプライチェーン攻撃]]事例。週間1億DL超のパッケージを含む100件超に影響

- 悪性版: `keyv@6.0.0` を筆頭に `cacheable-request` / `file-entry-cache` / `@cacheable/*` / `cache-manager` / `crawlee` 系・`@servicetitan/*` 系など
- 攻撃チェーン: `preinstall` フック（`node setup.mjs`）が `npm install` 時に自動発火 → Stage1 `setup.mjs`（RC4+base64難読化）が Bun ランタイムを DL・実行 → Stage2 `Math_Symbol.js`（728KB・2行難読化）が本体ペイロード
- 挙動: 端末内の全クレデンシャル・暗号通貨ウォレット・SSH 鍵・クラウド認証情報を窃取し、C2（`npm-cache[.]com`）および [[GitHub]] GraphQL API 経由で送出する多機能 infostealer
- 対応: 該当パッケージの除去とクレデンシャル全ローテーション（AWS / GitHub [[PAT]] / npm トークン / Kubernetes / Vault / SSH / 暗号通貨ウォレット）
- 自衛: `npm ci --ignore-scripts`、`.npmrc` の `min-release-age`（npm v11+・7日推奨）設定。npm OIDC provenance は有効だが CI/CD パイプライン自体の侵害には無力なため過信しない

<https://blog.flatt.tech/entry/keyv_compromise>

[[Blog|ブログ]]
