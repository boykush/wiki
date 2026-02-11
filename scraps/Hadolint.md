#[[Security]] #[[Continuous Integration]]

[[Dockerfile]]の構文チェック、ベストプラクティス検証、セキュリティ脆弱性検出を行う静的解析ツール

Haskellで実装され、ShellCheckを統合することで`RUN`命令内のbashスクリプトも検証する

主な機能:

- Dockerfileの構文エラー検出
- ベストプラクティス違反の警告（例: [[Non-root User]]、[[マルチステージビルド]]）
- セキュリティ脆弱性の検出
- [[Continuous Integration|CI]]パイプラインへの統合が容易

[[Docker]]イメージとしても配布されており、ローカル環境へのインストール不要で実行可能

`hadolint.yaml`で出力形式やルールをカスタマイズ可能

<https://hadolint.dev/>
<https://github.com/hadolint/hadolint>
