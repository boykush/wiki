#[[LLM]]

[[Anthropic]]社が2026年7月24日に公開した、[[Claude]] 5世代モデル向けにコンテキストエンジニアリングの前提を見直す記事

- Claude Opus 5や[[Claude Fable/5|Claude Fable 5]]では[[Claude Code]]のシステムプロンプトを80%以上削減してもコーディング評価で計測可能な性能低下はなかったと報告
- 6つの転換を提示: ルールの列挙→モデルの判断への委任、例示→インターフェース設計、事前の全量投入→progressive disclosure、指示の繰り返し→簡潔なツール説明、CLAUDE.mdでの手動メモリ→auto-memory、簡素なスペック→リッチな参照資料
- コンテキストの構成指針: システムプロンプトはプロダクト固有の文脈、CLAUDE.mdは軽量なリポジトリ概要と注意点、[[Agent Skills|Skills]]はチーム固有の知見、参照資料はスペックやモックアップなどの詳細
- コンテキストの簡素化と適正化を自動支援する `claude doctor` コマンドも紹介

<https://claude.com/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models>
