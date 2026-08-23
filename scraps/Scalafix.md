#[[Programming]]

[[Scala]]向けのリファクタリングとlintのツール。Scala Centerが保守し、日常のコード整備と一度きりの移行スクリプトを自動化する

- 検出だけでなく自動修正を持つため、機械的な一括変換（codemod）として使える
- 構文ルール（`DisableSyntax`・`ProcedureSyntax`・`RedundantSyntax`など）はソースだけで動く
- 意味ルール（`RemoveUnused`・`OrganizeImports`・`ExplicitResultTypes`・`NoAutoTupling`）は型やシンボルの情報を要するため、SemanticDBコンパイラプラグインが出力するメタデータを必要とする
- コードレビューのたびにルールを強制する、CIでの運用を掲げている

<https://scalacenter.github.io/scalafix/>
