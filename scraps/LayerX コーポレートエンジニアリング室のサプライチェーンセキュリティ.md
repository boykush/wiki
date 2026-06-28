#[[Security]] #[[Continuous Integration]]

LayerX のコーポレートエンジニアリング室（アプリケーショングループ）による、ソフトウェア[[サプライチェーン攻撃]]対策の運用事例（2026-02 の発表）。使う技術を絞り、少人数でもスケールする状態を目指す。

- 依存を pin する: lockfile（pnpm-lock.yaml・go.sum）に加え、GitHub Actions の pinning を CI で強制。[[Terraform/github_organization_ruleset|org ruleset]] の [[require workflows]] で org 全体に共有 workflow を適用し、その共有 workflow で [[pinact]] を実行して未 pin の action を検知。Docker イメージは sha256、CI/CD ツールは [[aqua]] で checksum 検証
- cooldown: リリースから N 日以内のパッケージを入れない（[[pnpm]]・[[Renovate]] の [[Renovate/minimumReleaseAge|minimumReleaseAge]]、Dependabot の cooldown.default-days）。security fix のみ人間確認後に minimumReleaseAgeExclude で除外
- まとめ: 迅速な修正・pinning・cooldown に加え、検知・遮断・影響範囲の局所化も併せて進める

<https://speakerdeck.com/yuyatakeyama/supply-chain-security-at-layerx-corporate-engineering>
