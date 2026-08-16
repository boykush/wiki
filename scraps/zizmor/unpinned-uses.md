#[[Security]]

[[zizmor]]の audit。`uses:` で third-party action を tag や branch 名（`@v3`、`@main`）で参照し、コミット[[SHA]]で pin していないケースを検出する

- tag は publisher 側で参照先を書き換え可能。正当だったタグが後日マルウェア入りコミットを指すよう移動されると、参照している全ワークフローが侵害される
- [`tj-actions/changed-files` 事件](https://www.stepsecurity.io/blog/harden-runner-detection-tj-actions-changed-files-action-is-compromised)がこのパターン。SHA は immutable なので内容が変わらないことを暗号学的に保証できる

<https://docs.zizmor.sh/audits/#unpinned-uses>
