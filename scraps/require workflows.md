#[[Continuous Integration]]

GitHub の organization / enterprise レベル専用の ruleset ルールで、指定した [[GitHub Actions]] ワークフローの成功を PR マージの条件にする（正式名 "Require workflows to pass before merging"、旧 Required workflows）。各リポジトリにファイルを追加せず適用でき、[[GitHub Enterprise Cloud]] 等の GitHub Enterprise プランが必要。

- repo 単位でチェック成功を必須化する別ルール "require status checks" とは別物

<https://docs.github.com/en/enterprise-cloud@latest/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets>
