#[[Programming]] #[[LLM]]

[[Claude Code]]のコア実行メカニズム

プロンプト評価 → ツール呼び出し → 結果フィードバック → 繰り返し、というサイクルでタスクを完了まで自律的に進める

- **ターン**: 1回のループ = Claudeの出力 + SDKによるツール実行 + 結果フィードバック
- ツール呼び出しがなくなった時点でループ終了し最終結果を返す
- `max_turns` でターン数上限、`max_budget_usd` でコスト上限を設定可能
- [[Claude Code/サブエージェント]]も同じループ機構で動作する
- [[Claude Code/Agent Teams]]では複数ループが並列・協調動作する

<https://platform.claude.com/docs/en/agent-sdk/agent-loop>
