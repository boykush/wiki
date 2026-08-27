#[[Security]]

[[zizmor]]の audit。`secrets` context 全体を job に渡しているケース（`toJSON(secrets)` での注入や reusable workflow 呼び出し時の `secrets: inherit` など）を検出する

<https://docs.zizmor.sh/audits/#overprovisioned-secrets>
