#[[LLM]]

[[Claude Code]]のタスク管理機能で、以前のTodosの後継。ファイルシステムにタスクを永続化し、セッションやコンテキスト圧縮を跨いで維持される

- DAG（有向非巡回グラフ）によるタスク間の依存関係管理
- [[Claude Code/サブエージェント]]や[[Claude Code/Agent Teams]]との共有・協調動作
- `CLAUDE_CODE_TASK_LIST_ID`環境変数で複数セッション間のタスクリスト共有が可能
- `Ctrl+T`でタスクリストの表示/非表示を切り替え

<https://code.claude.com/docs/en/interactive-mode.md#task-list>
