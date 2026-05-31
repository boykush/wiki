#[[Continuous Integration]]

[[Git]] の pre-commit フックを多言語横断で管理・実行するフレームワーク

`.pre-commit-config.yaml` で hook を宣言し、`pre-commit install` で `.git/hooks/pre-commit` にスクリプトを配置する

主な特徴:

- 多言語対応 - Python / Node.js / Go / Rust 等のランタイムを自動隔離して hook を実行
- 豊富な hook エコシステム - [[Hadolint]] / [[Trivy]] / [[gosec]] / [[golangci-lint]] / [[zizmor]] 等を hook として組み込み可能
- バージョン固定 - hook 定義に `rev` を指定し再現性を担保
- CI でも実行可能 - `pre-commit run --all-files` でローカルと同じ検証をパイプラインから走らせる

[[DevSecOps]] のシフトレフトをコミット直前で完結させる

<https://pre-commit.com/>
