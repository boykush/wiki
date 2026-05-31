#[[Security]]

[[mise]] の設定。tool のリリースが公開されてから指定期間が経つまで、その新バージョンを install 対象から除外する

- 値は相対指定（`7d` / `90d` / `6m` / `1y`）または絶対日付（`2024-06-01` 等）
- 公開直後の侵害バージョンの取り込みを避け、コミュニティが検知・撤回する猶予を置く [[サプライチェーン攻撃]] の timing 緩和策

<https://mise.jdx.dev/configuration/settings.html#minimum_release_age>
