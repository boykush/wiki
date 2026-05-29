#[[Security]]

[[Renovate]] の設定オプション。パッケージのリリースが公開されてから指定期間（例: `"3 days"` / `"1 week"`）経過するまで、そのバージョンへの更新 PR を作らず待機させる（旧名 `stabilityDays`）

## security 文脈

- 公開直後の悪意あるバージョンを取り込むのを避ける[[サプライチェーン攻撃]]の緩和策。コミュニティが侵害パッケージを検知・撤回するまでの猶予を置いてから更新する
- automerge と併用すると、自動マージ前のクールダウン期間として機能する

## 設定例

`renovate.json` で全更新に 3 日のクールダウンを課す。

```json
{
  "minimumReleaseAge": "3 days"
}
```

<https://docs.renovatebot.com/configuration-options/#minimumreleaseage>
