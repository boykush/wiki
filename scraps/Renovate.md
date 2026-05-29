#[[Continuous Integration]]

依存とロックファイルの更新 Pull Request を自動生成するツール。公式は "Automated dependency updates. Multi-platform and multi-language." を標榜し、90+ のパッケージマネージャに対応する

[[Mend.io]] が維持する OSS（AGPL-3.0-only）で、GitHub / GitLab / Bitbucket / Azure DevOps / Gitea / Forgejo / AWS CodeCommit / Gerrit など 9 つの Git プラットフォームで動く

## 特徴

- リポジトリ内の依存定義を自動検出し、設定スケジュールに沿って更新 PR を作成（monorepo も検出）
- 設定は `renovate.json` / `.renovaterc` などを配置（最初に見つかった 1 つで停止）。preset で設定を共有・再利用できる
- Dependency Dashboard — 全更新の状態を 1 つの Issue に集約して可視化
- grouping で複数更新を 1 PR にまとめ、automerge で条件を満たした PR を自動マージ
- 非推奨依存の置き換え（replacement）を提案

[[npm]] パッケージ / [[Docker]] イメージとしてセルフホストするほか、Mend Renovate App（ホスト型）も使える

<https://docs.renovatebot.com/>
<https://github.com/renovatebot/renovate>
