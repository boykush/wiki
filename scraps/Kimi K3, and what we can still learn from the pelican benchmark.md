#[[LLM]]

Moonshot AI が2026年7月16日に発表した2.8兆パラメーター推論モデル Kimi K3 のレポートと、Simon Willison によるペリカンベンチマークの有効性と限界の考察。

- **Kimi K3**: 2.8兆パラメーター、初の「open 3T-class モデル」（DeepSeek V4 Pro の1.6Tを超える）、open weight は2026-07-27予定
- ベンチ: [[Claude Opus/4.8]] max・GPT-5.5 high には勝るが、Claude Fable 5・GPT-5.6 Sol には負ける
- Artificial Analysis: 長期知識作業Elo 1547（Claude Fable 5に次ぐ2位）、Arena.ai Frontend Code arena 1位
- 価格: $3/$15 per Mトークン（中国AIラボ最高値、Anthropic [[Claude]] Sonnet シリーズと同水準）
- 推論effortは"max"の1段階のみ。ペリカン生成で推論トークン13,241消費・計25セント
- 隠し系統プロンプト約85トークン存在の可能性（"hi"で86トークン計上）、漏洩拒否
- **ペリカンベンチマーク**: 21ヶ月経過し品質との相関はほぼ断絶。今も「実際に試した証明」「コスト・推論量の粗い推定」「SVG/空間認識確認」「同一ファミリー内進化比較」として価値を持つ

<https://simonwillison.net/2026/Jul/16/kimi-k3/>

[[Blog|ブログ]]
