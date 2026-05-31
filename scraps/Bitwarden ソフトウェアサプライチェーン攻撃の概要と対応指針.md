#[[Security]]

npmパッケージ`@bitwarden/cli@2026.4.0`がマルウェア混入により侵害された[[サプライチェーン攻撃]]事例

- 多段ペイロード構成
  - Stage1: `bw_setup.js`がBunランタイムをDL
  - Stage2: 難読化された9.7MBの`bw1.js`が認証情報を窃取
  - Stage3-4: `audit[.]checkmarx.cx`へ暗号化送信、[[GitHub]]へフォールバック
- 発火点: `npm install`時の`preinstall`フック、および`bw`コマンド実行時
- 窃取対象: SSH鍵 / [[PAT|GitHub PAT]] / npmトークン / クラウド資格情報 / `~/.claude.json`等のAI設定 / `.env`
- 対策: `2026.4.1`へ更新、資格情報ローテーション、`npm ci --ignore-scripts`、`min-release-age`の設定

<https://blog.flatt.tech/entry/bitwarden_compromise>

[[Blog|ブログ]]
