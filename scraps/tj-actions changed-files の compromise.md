#[[Security]]

[[GitHub Actions]]の人気 action [[tj-actions/changed-files]] が侵害された[[サプライチェーン攻撃]]事例 [[CVE-2025-30066]]

- 発覚は 2025-03-14、StepSecurity が Harden-Runner の挙動監視で検知。`@tj-actions-bot` の [[PAT]] 奪取により、リポジトリ外で作成された malicious commit へ全タグが retroactively 付け替えられた（tag 移動による action 汚染の典型）
- ペイロードは GitHub Actions runner プロセスのメモリから secrets を dump して log に出力するもので、public repo では誰でも読める log から漏洩する。影響は 23,000+ リポジトリ
- [[GitHub]] によるリポジトリ復旧後の対処は、SHA pin 化または代替 action への切替と、漏洩可能性のある secrets の rotate

<https://www.stepsecurity.io/blog/harden-runner-detection-tj-actions-changed-files-action-is-compromised>

[[Blog|ブログ]]
