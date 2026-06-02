#[[Continuous Integration]] #[[Platform Engineering]]

[[Go]] 言語で書かれた、多数の [[Git]] リポジトリへ一括で変更を加える CLI ツール。[[マイクロサービス]] のように小さなリポジトリが多数に分かれた構成で有用と公式は述べている

`init` → `clone` → `plan` → `push` → `merge` の 5 段階のワークフローで、ターゲットリポジトリの選定からスクリプトベースの一括編集・差分プレビュー・PR 作成・マージまでを順に進める。バックエンドは [[GitHub]] と GitLab（self-hosted 含む）

<https://github.com/Clever/microplane>
