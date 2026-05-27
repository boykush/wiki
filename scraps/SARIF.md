## Static Analysis Results Interchange Format

#[[Security]]

[[SAST]] / DAST ツールが検出結果を出力するための JSON ベース標準フォーマット。OASIS が策定し、現在は v2.1.0 が広く利用される

GitHub Code Scanning の取り込みフォーマットとして採用されており、対応ツールの出力を Security タブの code scanning alerts に集約できる

## スキーマの主要要素

- `runs[]` - 1 回のツール実行に対応
- `runs[].tool.driver` - 解析ツール情報（name / version / rules）
- `runs[].results[]` - 個々の検出結果（ruleId / level / message / locations）
- `physicalLocation` - ファイル / 行 / 列の指定

<https://sarifweb.azurewebsites.net/>
