#[[Programming]] #[[Continuous Integration]]

[[GitHub]]公式のコード品質機能。Code scanning を拡張し、Pull Request 上でコード品質の問題を検出して修正提案までを提供する。

- 2025 年に public preview として公開。GitHub Team / [[GitHub Enterprise Cloud|Enterprise Cloud]] の組織リポジトリのみ対応（Enterprise Server 非対応）で、別途 Copilot / Code Security ライセンスは不要
- ルールベース解析（CodeQL エンジン）と AI 解析の 2 系統で、保守性・信頼性・パフォーマンス・複雑度・重複/デッドコード・テストカバレッジなどを検出する
- 指摘は PR 上にインライン表示され、[[GitHub Copilot]]によるワンクリック autofix と reliability/maintainability スコアを提示する
- スキャンは[[GitHub Actions]]上で実行され、Actions minutes を消費する
- [[適応度関数]]のコード品質カテゴリに該当する

<https://docs.github.com/en/code-security/concepts/about-code-quality>
