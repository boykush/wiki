#[[LLM]]

[[Claude Code]]の機能。多数の[[Claude Code/サブエージェント]]を大規模にオーケストレーションする[[JavaScript]]スクリプトをClaudeが実行時に生成し、ランタイムがバックグラウンドで実行する（セッションは応答可能なまま、同一セッション内でresume可能）

サブエージェントやスキルがClaude自身をオーケストレータにするのに対し、Dynamic Workflowsは「プランをコードに移す」点が異なる。中間結果はスクリプト変数に保持され、Claudeの[[コンテキストウインドウ]]には最終回答だけが載る。独立エージェント同士のadversarial reviewなど反復的な品質パターンを適用できる

- 制約: 同時16 / 通算1000 agent。workflow本体はFS・シェルに触れず、操作はagentのみが担う
- 起動: プロンプトに `workflow` を含める、または [[Claude Code/effort]] を `ultracode`（`xhigh` + 自動オーケストレーション）に設定
- 同梱の `/deep-research` がbundled workflowとして付属する
- research preview。全有料プラン（Proは `/config`）と API / Bedrock / Vertex / Foundry で利用可（要Claude Code v2.1.154+）

<https://code.claude.com/docs/en/workflows>
