#[[Continuous Integration]]

指定した status check（CI チェック）の成功を PR マージの条件にする GitHub の ruleset ルール（正式名 "Require status checks to pass before merging"）。repository / organization どちらのレベルでも設定できる。

- status check は [[GitHub Actions]] のジョブ・外部 CI（Commit Status API）・GitHub App から付与され、base 追従を必須化する up-to-date オプションを持つ

<https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets>
