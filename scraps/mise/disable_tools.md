[[mise]] の設定。特定の tool を名指しで無効化し、[[mise/Dev Tools]] の管理対象から外す。主に mise 内蔵の core tools を off にする用途

- `mise.toml` の `[settings]` に `disable_tools = ['node']`、環境変数 `MISE_DISABLE_TOOLS`、`mise settings add disable_tools node`（`--env local` でローカル限定）で指定
- 親 / 子ディレクトリの override に対応し、階層ごとに無効化する tool を変えられる
- 関連: `auto_install_disable_tools` は auto-install だけを tool 単位で無効化する
- env 変数経由だと無効化しても tool が PATH に残る場合がある <https://github.com/jdx/mise/discussions/9822>

<https://mise.jdx.dev/configuration/settings.html#disable_tools>
