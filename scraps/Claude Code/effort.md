#[[Programming]] #[[LLM]]

[[Claude Code]]でのレスポンスの品質・速度・コストのトレードオフを制御するパラメータ

- `low` / `medium` / `high`（デフォルト）/ `max` の4段階
- 思考の深さ、ツール呼び出し回数、レスポンス長のすべてに影響する
- `high` ではほぼ常にextended thinkingが発動し、`low` では簡単なタスクで思考をスキップ
- [[Claude Opus/4.6]] で導入され、`budget_tokens` の代替として設計された
- プロンプトに `ultrathink` などのトリガーワードを含めることでも制御可能（[[Claude Code]]固有機能）

<https://platform.claude.com/docs/en/build-with-claude/effort>
