#[[Security]] #[[Continuous Integration]]

[[GitHub Actions]] で OIDC や Trusted Publishing を導入しても runner 上の認証情報漏洩リスクは構造的に残る、という限界を解説した Flatt Security ブログ記事（Part 3）

- **漏洩経路**: `Runner.Worker` プロセスのメモリダンプで [[GITHUB_TOKEN]] や環境変数の secrets・OIDC 派生クレデンシャルを取得可能（GitHub-hosted runner は sudo がパスワードなしで実行可能）
- **軽減策**: クラウド側でクレーム完全一致検証・数値 ID 優先・インラインセッションポリシーで権限を多層絞り込み；認証 step と任意コード実行 job を分離
- **残る攻撃面**: [[サプライチェーン攻撃]]で依存が汚染された場合、認証 job のコンテキスト内で悪意コードが動く（IaC ワークフローは job 分離自体が困難）
- **検知と対応**: 一時クレデンシャル（有効期間 ~1.5h）の悪用を前提に CloudTrail・Cloud Audit Logs・GuardDuty 等で検知体制を整備

<https://blog.flatt.tech/entry/2026-github-actions-security-part3>

[[Blog]]
