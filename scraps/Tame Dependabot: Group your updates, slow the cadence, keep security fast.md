#[[Security]] #[[Continuous Integration]]

[[GitHub]] の `.github/dependabot.yml` でバージョン更新の PR ノイズを抑える設定パターンを、Microsoft GCToolkit の実例で解説する GitHub Blog 記事。

- **grouping**: `groups` に `patterns: ["*"]` の wildcard group を定義し、複数依存の更新を 1 PR にまとめる
- **cadence**: `schedule.interval` を `daily` から `monthly`（や `weekly`）に落とし、バッチ頻度を予測可能にする
- **ecosystem 網羅**: 使用している `package-ecosystem` を漏れなく `updates` に列挙する（例では `maven` を追加）
- セキュリティ更新はこの `schedule` / `groups` と独立に、脆弱性開示のタイミングで即座に発行される
- 新デフォルトのクールダウン: 新リリースから **3日間**待ってからバージョン更新 PR を開く（`cooldown.default-days` で調整可）

<https://github.blog/security/supply-chain-security/tame-dependabot-group-your-updates-slow-the-cadence-keep-security-fast/>

[[Blog|ブログ]]
