#[[Programming]] #[[LLM]]

[[Claude Code]]のセッション中にプロンプトを定期実行するスケジュール機能

- `/loop [interval] <prompt>` で一定間隔の繰り返し実行（例: `/loop 5m check if the deploy finished`）
- 自然言語でワンショットのリマインダーも設定可能
- セッションスコープのため終了時に消える。永続的なスケジュールには[[Claude Code/GitHub Actions]]やDesktop scheduled tasksを使う

<https://code.claude.com/docs/en/scheduled-tasks>
