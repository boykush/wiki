#[[Continuous Integration]]

[[Git]] の pre-commit hook を多言語対応で管理するフレームワーク。[[Python]] 製で `.pre-commit-config.yaml` に hook 定義を宣言する

- `pre-commit install` で `.git/hooks/pre-commit` に shim を配置し、`git commit` 時にステージ済みファイルのみへ自動実行する
- 外部リポジトリ上の hook 定義を `repo` + `rev` で参照し、バージョンを pin して再現性を保つ
- 20 以上の言語 / ランタイムを isolated 環境に自動セットアップするため、各言語の lint / format ツールを個別インストールせず組み込める
- CI でも `pre-commit run --all-files` でローカルと同一の hook 設定を再実行できる

<https://pre-commit.com/>
