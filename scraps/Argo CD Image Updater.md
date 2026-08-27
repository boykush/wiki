#[[Cloud Native]] #[[Continuous Delivery]]

[[Argo CD]]が管理する[[Kubernetes]]ワークロードの[[コンテナ]]イメージを、レジストリを監視して自動更新する argoproj-labs のツール（Apache-2.0）。公式は "under active development" として critical な本番ワークロードでの利用をまだ推奨していない

- 更新対象のイメージと更新戦略は `ImageUpdater` [[Kubernetes/CRD|CRD]] で指定する
- 更新結果はリポジトリへコミットして永続化でき、[[GitOps]]で運用するならこちらを選ぶ
- 直接 push せず PR を開く方式もあり、SCM API を叩くため PAT か [[GitHub App]] が必要

<https://argocd-image-updater.readthedocs.io/en/stable/>
