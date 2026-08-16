#[[Security]] #[[Continuous Integration]]

[[GitHub]] Blog 記事。Dependabot が非セキュリティの version updates（脆弱性とは無関係な最新化）に、リリース公開から既定 3 日待ってから PR を開くクールダウンを導入した発表

- 背景: 2025年9月、週20億DL超の chalk / debug 等十数パッケージが npm メンテナー1名のフィッシングで侵害され、暗号資産ウォレットアドレスを書き換えるコードが混入。検知・撤回までは約2時間で済んだが、自動更新ツールはその窓の間に新バージョンを取り込んでしまう
- 対象は version updates のみ。脆弱性修正を届ける security updates は既知の欠陥を放置しないため即座に PR を開く
- 既定値は `dependabot.yml` の `cooldown` オプションで変更可能
- [[GitHub Advisory Database]] では 2026年5月までの1年間で [[npm]] のマルウェアアドバイザリが 6,500 件超（1日約18件ペース）登録され、公開直後に検知される侵害パターンが繰り返し観測される
- クールダウンは「公開後すぐ広まり検知される」攻撃にのみ有効。遅延実行のバックドアやメンテナー侵害、ビルド系侵害には効かないため、ロックファイル固定・CI でのインストールスクリプト無効化・ビルドトークンのスコープ縮小・マージ前レビューと組み合わせる[[サプライチェーン攻撃]]対策の一つ

<https://github.blog/security/supply-chain-security/the-case-for-a-cooldown-why-dependabot-now-waits-before-issuing-version-updates/>

[[Blog|ブログ]]
