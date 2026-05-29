#[[Continuous Integration]]

[[Renovate]] を自前インフラで運用する [[Mend.io|Mend]] 公式の商用セルフホスト版（Community Edition / Enterprise Edition）。GitHub では自分で [[GitHub App]] を登録し、その bot として依存更新 PR を回す

[[Renovate/GitHub Action]] が workflow から CLI を都度実行するのに対し、こちらは Docker コンテナで常駐するサーバーとして動くのが違い

## 特徴

- 組み込みジョブスケジューラ（デフォルト毎時）が全リポジトリをキューに投入し、`cron` の構築・監視が不要
- webhook リスナー（`/webhook`）で App 追加・`main` への設定変更・Renovate PR の close/merge 等に即応し、優先度付きキューで処理する
- ホスト型のクラウド Mend Renovate App とは別で、GitHub Enterprise Server など自前環境向け

<https://github.com/mend/renovate-ce-ee>
