#[[Security]]

[[zizmor]]の audit。`secrets` context 全体を job に渡しているケース（`toJSON(secrets)` での注入や reusable workflow 呼び出し時の `secrets: inherit` など）を検出する

## 検出例

```yaml
env:
  SECRETS: ${{ toJSON(secrets) }}
```

## なぜ危険か

- 上の `toJSON(secrets)` は secrets context 全体を 1 つの環境変数に注入する — 1 つの secret しか必要なくても全 secret が job プロセスから見える
- 同カテゴリの典型: reusable workflow 呼び出し時の `secrets: inherit` も全 secrets を子に流す
- 子側のコード変更や log への意図せぬ出力で、本来必要ない secret も漏洩面に入る

## 改善例

```yaml
env:
  SECRET_ONE: ${{ secrets.SECRET_ONE }}
  SECRET_TWO: ${{ secrets.SECRET_TWO }}
```

<https://docs.zizmor.sh/audits/#overprovisioned-secrets>
