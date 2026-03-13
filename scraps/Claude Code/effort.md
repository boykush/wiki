#[[LLM]]

[[Claude Code]]においてモデルの推論深度を制御する設定

effortレベル（4段階）:

- `max` - トークン使用制限なし（Opus 4.6のみ）
- `high` - デフォルト。複雑な推論・コーディング向け
- `medium` - パフォーマンスとコストのバランス
- `low` - 速度・コスト最適化

設定方法: `/model`コマンド、環境変数 `CLAUDE_CODE_EFFORT_LEVEL`、`settings.json`の`effortLevel`フィールド

[[Claude Opus/4.6]]から導入。`ultrathink`・`budget_tokens`の後継
<https://code.claude.com/docs/en/model-config>
