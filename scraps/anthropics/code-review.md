#[[Claude Code]]

Pull Requestのコードレビューを自動化する[[Anthropic]]公式の[[Claude Code/Plugins]]。[[anthropics/claude-plugin-official]]で配布される

- 4つの[[Claude Code/サブエージェント]]を並列実行し、CLAUDE.md準拠・バグ検出・git履歴分析を独立に監査する
- 各指摘を0-100で信頼度スコアリングし、80以上のみをPRコメントとして投稿する
- ドラフト・trivial・レビュー済みPRは自動でスキップする

<https://github.com/anthropics/claude-plugins-official/tree/main/plugins/code-review>
