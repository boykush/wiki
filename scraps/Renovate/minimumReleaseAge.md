#[[Security]]

[[Renovate]] の設定オプション。パッケージのリリースが公開されてから指定期間（例: `"3 days"`）経過するまで、そのバージョンへの更新 PR を作らず待機させる（旧名 `stabilityDays`）

- 公開直後の悪意あるバージョンを取り込むのを避ける[[サプライチェーン攻撃]]の緩和策。コミュニティが侵害パッケージを検知・撤回するまでの猶予を置いてから更新する

<https://docs.renovatebot.com/configuration-options/#minimumreleaseage>
