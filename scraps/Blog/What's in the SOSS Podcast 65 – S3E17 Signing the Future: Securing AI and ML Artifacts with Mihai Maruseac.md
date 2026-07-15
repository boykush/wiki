#[[Security]] #[[LLM]] #[[Security/Cryptography]]

OpenSSF の What's in the SOSS? ポッドキャスト。Mihai Maruseac（OpenSSF AI/ML Working Group リード、OpenAI）が AI/ML アーティファクト署名と OMS（OpenSSF Model Signing）仕様を解説する

- AI モデルは weights を直接検査できず、悪意の有無は実行時にしか判明しない。[[サプライチェーン攻撃]] 対策として chain of custody の確立が不可欠
- OMS は In-toto predicates ベースの implementation-agnostic 仕様。[[Sigstore]] による keyless 署名を推奨しつつ、企業 PKI・PKCS 11 等もサポートし[[署名検証]]を汎用化
- v1.0（2025/04）→ v1.1（2025/10、PKCS 11 追加）→ v2 で attestation を JSONL 一本化し "attestation sprawl" を解消予定。NVIDIA・Kaggle が既採用
- 将来像: モデル・データセット・AGENTS.md 等の全 ML アーティファクトを署名付きで GUAC に投入し、AIBOM 自動生成と blast radius 分析を実現

<https://openssf.org/podcast/2026/07/14/whats-in-the-soss-podcast-65-s3e17-signing-the-future-securing-ai-and-ml-artifacts-with-mihai-maruseac/>

[[Blog|ブログ]]
