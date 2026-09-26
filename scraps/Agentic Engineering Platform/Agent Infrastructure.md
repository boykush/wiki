#[[LLM]]

[[Agentic Engineering Platform]]の3層のうち最下層で、エージェントを動かし、文脈と記憶を与え、ガードレールを定め、人間とエージェントのやり取りを統べる基盤。ツール群とパスは業務領域ごとに入れ替わるが、この層だけは変わらない

- [[Infrastructure as Code]]と同じ規律で、この基盤もコードで表す（Agent Infrastructure as Code）
- 構成
  - Harness
    - Execution
    - Context
    - Capability
    - Evaluation
  - Governance
    - Identity
    - Agent security
    - Agent observability
  - Models
    - Providers
    - Inference endpoints
    - Model hosting

<https://weaveintelligence.io/blog/what-is-an-agentic-development-platform>
