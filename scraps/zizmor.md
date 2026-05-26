#[[Security]] #[[Continuous Integration]]

[[GitHub Actions]]ワークフローの静的解析を行う[[SAST]]ツール。[[サプライチェーン攻撃]]や認証情報窃取につながる workflow 設定の不備を検出する

[[Rust]]製。`.github/workflows/` 配下の YAML を解析し、命名された audit ID 単位で検出 / ignore を行える

主な audit カテゴリ:

- [[zizmor/dangerous-triggers]]
- [[zizmor/template-injection]]
- [[zizmor/unpinned-uses]]
- [[zizmor/excessive-permissions]]
- [[zizmor/overprovisioned-secrets]]

<https://zizmor.sh/>
<https://github.com/zizmorcore/zizmor>
