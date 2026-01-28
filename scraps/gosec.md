#[[Security]] #[[Programming]]

[[Go]]言語のソースコード静的セキュリティ分析ツール

Go AST（抽象構文木）を解析し、セキュリティ問題となりうるプログラミングミスを検出する[[SAST]]ツール

主な特徴:

- -includeまたは-excludeフラグで検査ルールを選択可能
- 検出された問題はCWE（Common Weakness Enumeration）にマッピングされる
- AI統合によるセキュリティ修正提案（Gemini、Claudeに対応）
- GitHub Actionとしても利用可能

インストール: `go install github.com/securego/gosec/v2/cmd/gosec@latest`

<https://github.com/securego/gosec>
