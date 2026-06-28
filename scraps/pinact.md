#[[Security]] #[[Continuous Integration]]

[[GitHub Actions]] の action / reusable workflow の参照を full-length commit SHA に pin する CLI（[[suzuki-shunsuke|@suzuki-shunsuke]] 製）。タグは可変で改ざんの余地があり、SHA 固定だけが不変なリリース参照になる、という[[サプライチェーン攻撃]]対策。

- `pinact run` で参照を SHA に pin（`# v3.5.1` のバージョンコメント付き）。`--update` で更新、整合の検証にも対応
- `--no-api` で API なしの構文チェック、`--min-age` でリリース直後の参照を弾く

<https://github.com/suzuki-shunsuke/pinact>
