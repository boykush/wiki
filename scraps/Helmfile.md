#[[Infrastructure as Code]] #[[DevOps]] #[[GitOps]]
Helmfileは、[[Helm]]チャートをデプロイするための宣言的な仕様を提供するツールです。複数のHelmリリースを効率的に管理することができます。

## 概要

Helmfileを使用することで、[[Kubernetes]]環境における複数のHelmチャートのデプロイメントを、YAMLファイルで宣言的に管理できます。これにより、環境ごとの設定の違いを明確にし、再現性の高いデプロイメントを実現します。

## 主な機能

- 複数のHelmリリースを一つのファイルで管理
- 環境ごとの値のオーバーライド
- リリース間の依存関係の定義
- デプロイの差分確認（diff機能）

<https://helmfile.readthedocs.io/en/latest/>
