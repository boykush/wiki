[[Argo CD]]同期操作の各段階でカスタムスクリプトを実行できる機能

各段階の種別は以下

- PreSync
- Sync
- PostSync
- SyncFail
- PostDelete

[[Kubernetes/Job]]やArgo Workflowsを組み合わせることが多い。

ユースケース例として、アプリケーションリリース前にDBマイグレーションが挙げられる

<https://argo-cd.readthedocs.io/en/release-2.14/user-guide/resource_hooks/>
