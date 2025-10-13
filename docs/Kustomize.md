#[[Infrastructure as Code]]

[[Kubernetes]]の設定ファイルを[[YAML]]で記述する際、 `kustomization.yaml` によってリソース定義の集約等を行うことができるツール

環境ごとに共通化できる設定（`base`）、環境ごとの差分設定（`overlays`）を扱い、設定ファイルの記述を最低限にする

## 利用パターン

[[Kubernetes/Deployment]]等に指定するイメージを最新のバージョンで置きかえるようなケース
```
> kustomize edit set image $BEFORE_IMAGE_NAME=$AFTER_IMAGE_NAME
```

---

[Kustomize - Kubernetes native configuration management](https://kustomize.io/)