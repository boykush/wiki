#[[Security]]

[[zizmor]]の audit。`pull_request_target` や `workflow_run` のような書き込み権限と secrets を持ったまま走るトリガーの使用を検出する

- fork PR からのトリガーでもベースリポジトリの context で実行されるため、`secrets` と書き込み token がジョブに渡る
- fork PR の内容（タイトル、ref、checkout した head のコード）を信頼して扱うと、攻撃者がリポジトリの secrets 窃取やコミット改竄できる

<https://docs.zizmor.sh/audits/#dangerous-triggers>
