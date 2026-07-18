[[mise/Bootstrap]] の各フェーズ前後に任意コマンドを差し込む拡張点。`[bootstrap.hooks.<point>]` に `run`（文字列または配列）で宣言し、宣言的セクションに収まらない処理（認証フローや環境固有のセットアップ等）の逃げ道になる

- hook point は各フェーズの `pre-*` / `post-*`（`packages` / `repos` / `dotfiles` / `defaults` / `user` / `tools`）と、bootstrap task 後に走る `final`
- `mise bootstrap` 実行時のみ走り、失敗すると停止する。`[tools]` で入れたツールを使う後処理（例: `post-tools` で `corepack enable`）にも使える

<https://mise.jdx.dev/bootstrap.html>
