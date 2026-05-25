#[[Security]]

[[zizmor]]の audit。`pull_request_target` や `workflow_run` のような書き込み権限と secrets を持ったまま走るトリガーの使用を検出する

## 検出例

```yaml
on: pull_request_target
```

## なぜ危険か

- 上の `pull_request_target` は fork PR からのトリガーでもベースリポジトリの context で実行され、`secrets` と書き込み token がジョブに渡る
- fork PR の内容（タイトル、ref、checkout した head のコード）を信頼して扱うと、攻撃者がリポジトリの secrets 窃取やコミット改竄できる
- `workflow_run` も同種の高権限トリガー

## 改善例

```yaml
on: pull_request
```

<https://docs.zizmor.sh/audits/#dangerous-triggers>
