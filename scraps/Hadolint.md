#[[Continuous Integration]]

[[Dockerfile]]の構文チェック、ベストプラクティス検証、セキュリティ脆弱性検出を行う[[SAST]]ツール

- Haskellで実装され、ShellCheckを統合することで`RUN`命令内のbashスクリプトも検証する
- ベストプラクティス違反の警告は[[Non-root User]]や[[マルチステージビルド]]などの実践に対応する
- [[Docker]]イメージとしても配布されており、ローカル環境へのインストール不要で実行可能

<https://hadolint.dev/>
<https://github.com/hadolint/hadolint>
