#[[Cloud Native]]

[[Kubernetes]]の設定ファイルをyamlで記述する際、 `kustomization.yaml` によってリソース定義の集約等を行うことができるツール

環境ごとに共通化できる設定（`base`）、環境ごとの差分設定（`overlays`）を扱い、設定ファイルの記述を最低限にする

---

[Kustomize - Kubernetes native configuration management](https://kustomize.io/)