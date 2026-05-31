#[[Continuous Integration]]

[[mise]] と同じ jdx 作の [[Rust]] 製 [[Git]] hook manager。[[pre-commit]] や `pre-push` などのフック契機で linter / formatter を実行する

- 並行実行を file lock で安全化し、staged 変更を守りつつ並列度を最大化する性能設計
- 主要 linter / formatter を組み込み、外部 tool 提供は mise と統合
- 設定は Pkl で型付き記述する

<https://github.com/jdx/hk>
<https://hk.jdx.dev/>
