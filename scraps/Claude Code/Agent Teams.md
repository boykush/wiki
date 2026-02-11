#[[LLM]]

[[Claude Code]]の複数インスタンスをチームとして協調動作させる実験的機能

1つのセッションがTeam Leadとなりタスク分割・割り当て・統合を行い、Teammateが独立した[[コンテキストウインドウ]]で並列に作業する。[[Claude Code/サブエージェント]]と異なりTeammate同士が直接メッセージングできる

- 共有タスクリスト・メールボックスによるエージェント間連携
- Delegate Modeでリーダーをコーディネーション専任にできる
- Plan Approval Modeでリスクのある作業に計画承認を要求可能
- 表示モードはin-processとsplit panes（tmux/iTerm2）の2種類

<https://code.claude.com/docs/en/agent-teams>
