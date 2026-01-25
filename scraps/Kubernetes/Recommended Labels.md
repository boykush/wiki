#[[Kubernetes]] #[[Cloud Native]]

[[Kubernetes]]リソースを標準的な方法で記述するための共通[[Kubernetes/Label]]セット

ツール間の相互運用性を実現し、アプリケーションをクエリ可能な方法で記述する

## 標準ラベル

`app.kubernetes.io` プレフィックスを使用

- `app.kubernetes.io/name` - アプリケーション名
- `app.kubernetes.io/instance` - 一意なインスタンス識別子
- `app.kubernetes.io/version` - 現在のバージョン
- `app.kubernetes.io/component` - アーキテクチャ内のコンポーネント
- `app.kubernetes.io/part-of` - 上位レベルのアプリケーション名
- `app.kubernetes.io/managed-by` - 管理ツール

<https://kubernetes.io/docs/concepts/overview/working-with-objects/common-labels/>
