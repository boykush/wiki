#[[Security]]

2026年7月14日に `@asyncapi` エコシステムの [[npm]] パッケージ群が侵害された[[サプライチェーン攻撃]]事例。ワーム型マルウェア「Miasma」が注入され、窃取トークンを使って npm / PyPI / crates.io へ自己拡散する

- 悪性バージョン: `@asyncapi/specs@6.11.2`（stable・semver レンジに合致するため影響範囲大）・`6.11.2-alpha.1`、`@asyncapi/generator@3.3.1`、`generator-helpers@1.1.1`、`generator-components@0.7.1`
- 攻撃チェーン: `index.js` への直接注入（`require()` 時発火）→ IPFS 経由ダウンローダ（Stage 1）→ AES-256-GCM + ROT-4 多層暗号化ペイロード `sync.js`（Stage 2）→ Miasma ワームフレームワーク 約 92,000 行（Stage 3）
- Miasma の機能: C2（`85.137.53.71:8080`）へ 30 秒間隔ビーコン・12 種の遠隔指令（ShellExec 含む）、IPFS / Nostr / libp2p / BitTorrent DHT / Ethereum マルチチャネル通信、LAN スキャン横展開、AI ツール設定汚染（`.claude/settings.json` / `.vscode/tasks.json` / `.gemini/settings.json` / `.cursor/rules/setup.mdc`）、スポーン証明書チェーンによる最大 4 世代の制御拡散
- 窃取対象: AWS / Kubernetes / Git / npm / CI/CD クレデンシャルと環境変数シークレット
- 対応: 侵害前バージョン（`@asyncapi/specs@6.11.1` 以前）へ切り替え後クレデンシャル全ローテーション、永続化ファイル除去（`~/.local/share/NodeJS/sync.js`・`~/.config/.miasma/` 等）、`min-release-age=7`（`.npmrc`）設定を推奨。`npm ci --ignore-scripts` は本件には無効（malicious コードが `index.js` 本体に注入されているため）

<https://blog.flatt.tech/entry/asyncapi_compromise>

[[Blog|ブログ]]
