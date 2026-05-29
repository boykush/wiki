#[[Continuous Integration]]

[[Renovate]] を [[GitHub Actions]] 上でセルフホストする公式 Action `renovatebot/github-action`。ホスト型 Mend Renovate App を使わず、自前リポジトリの workflow から依存更新 PR を回す前提のセットアップ

## 設定

- workflow の `on.schedule`（cron）で定期実行する（例: `0/15 * * * *`）
- 設定ファイルは `configurationFile` で指定（JS / JSON）。`RENOVATE_` 接頭辞の環境変数はそのままコンテナへ渡る
- `renovate-version` で実行する Renovate（Docker イメージ）のバージョンを固定できる

<https://github.com/renovatebot/github-action>
