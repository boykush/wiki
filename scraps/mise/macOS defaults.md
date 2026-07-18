[[mise/Bootstrap]] の1フェーズで、macOS の user defaults（Dock / Finder / キーボード / トラックパッド等の挙動設定。通常は System Settings か `defaults write` で変える）を `[bootstrap.macos.defaults]` に宣言して収束させる

- 狙いは「新しい Mac を毎回手で設定し直す・秘伝の `defaults write` スクリプトを保守する」を、宣言的で冪等な設定に置き換えること。例: Dock の `autohide`/`tilesize`、Finder の `show_pathbar`、`key_repeat`、trackpad の `tap_to_click`、生キー指定の `"com.apple.finder" = { AppleShowAllFiles = true }`
- `mise bootstrap macos defaults apply` で適用（既に正しい値は skip）し、宣言と実機の差分（drift）を `status` や `mise doctor` で検知できる。設定が versioned な config に載るので再現・共有できる
- `macos` フェーズは LaunchAgents（launchd のユーザーサービス）も扱う

<https://mise.jdx.dev/bootstrap.html>
