#[[Security]]

[[zizmor]]の audit。`secrets` context 全体を job に渡しているケース（`toJSON(secrets)` での注入や reusable workflow 呼び出し時の `secrets: inherit` など）を検出する

- 1 つの secret しか必要なくても、全 secret が job プロセスから見える状態になる
- 子側のコード変更や log への意図せぬ出力で、本来必要ない secret も漏洩面に入る

<https://docs.zizmor.sh/audits/#overprovisioned-secrets>
