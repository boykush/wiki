#[[Security]] #[[Blog]]

npmパッケージ200件以上に感染した第2波サプライチェーン攻撃（2026-05-12〜）、侵入口はTanStack Router

- 第1波との差異: npmトークン盗取 → CI/CDパイプライン侵害 + 有効なSLSA来歴[[署名検証|署名]]付き
- 6段階感染: `optionalDependencies`フォーク実行 → 2.3MB難読化ペイロード → 100+パターン資格情報収集（AWS/Vault 17リージョン）→ 3チャネル窃取 → OS永続化 → ワーム拡散
- 永続化: `gh-token-monitor`サービスがGitHubトークン失効時に`rm -rf ~/`を実行
- **対応優先**: 資格情報ローテーションより先に永続化機構を停止・除去すること
- 対策: `npm ci --ignore-scripts`、`min-release-age`依存クールダウン、レジストリプロキシ

<https://blog.flatt.tech/entry/mini_shai_hulud_2nd>
