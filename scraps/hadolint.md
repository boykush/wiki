#[[Security]] #[[Continuous Integration]]

[[Dockerfile]]のベストプラクティスに違反している箇所を検出するlinter

[[Haskell]]で実装されており、以下の特徴を持つ

- Dockerfileを[[AST]]に解析してルールチェック
- RUN命令内の[[Bash]]コードは[[ShellCheck]]でlint
- セキュリティ脆弱性、パフォーマンス問題を検出
- [[Docker]]イメージとして提供され[[Continuous Delivery|CI]]に組み込みやすい

設定ファイル `hadolint.yaml` でルールをカスタマイズ可能

<https://hadolint.github.io/hadolint/>
