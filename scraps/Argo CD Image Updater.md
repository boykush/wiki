#[[Cloud Native]] #[[Continuous Delivery]]

[[Argo CD]]が管理する[[Kubernetes]]ワークロードの[[コンテナ]]イメージを、レジストリを監視して自動更新する argoproj-labs のツール（Apache-2.0）。公式は "under active development" として critical な本番ワークロードでの利用をまだ推奨していない

対象は[[Kustomize]] / [[Helm]] / Config Management Plugin でマニフェストをレンダリングするアプリケーションに限られ、プレーンな[[YAML]]は対象外

更新するイメージと更新戦略（`semver` / `newest-build` / `alphabetical` / `digest`）は `ImageUpdater` [[Kubernetes/CRD|CRD]] で指定する

## write back method

- `argocd` — クラスタ上の Application リソースのパラメータを直接書き換える。リソースを作り直すと消える
- `git` — `.argocd-source-<appName>.yaml` 等をリポジトリにコミットして永続化する。[[GitOps]]で運用するならこちら
- `git` + `pullRequest` — 直接 push せず head branch から PR / MR を開く。protected branch やレビューを挟みたい場合に使い、SCM API を叩くため PAT か [[GitHub App]] が必要

<https://argocd-image-updater.readthedocs.io/en/stable/>
