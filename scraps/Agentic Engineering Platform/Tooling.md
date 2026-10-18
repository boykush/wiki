---
sources:
  - resource: "/What is an Agentic Engineering Platform?.md"
  - resource: "https://weaveintelligence.io/research/ref-arch-aws"
---

#[[LLM]]

[[Agentic Engineering Platform]]の3層のうち最上層で、仕事が実際に走るツール群。開発の領域では[[Internal Developer Platform]]の参照アーキテクチャのプレーンをそのまま使い、エージェントが大量かつ並列に呼んでも耐えるAPIと構造化された出力を備える

- 設定は[[Infrastructure as Code]]で宣言的に持つ
- 開発の領域でのプレーン
  - Developer control plane
  - Integration & delivery
  - Resources
  - Observability
  - Security
