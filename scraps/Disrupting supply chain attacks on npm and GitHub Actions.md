#[[Security]] #[[Continuous Integration]]

[[GitHub]] Blog 記事。[[npm]] と [[GitHub Actions]] を狙う[[サプライチェーン攻撃]]の主要な手口を遮断するため、過去数か月に実装した変更をまとめている

- 初期侵害対策: high-impact npm アカウントのメール変更/2FA リカバリ時 72 時間 read-only 化、`pull_request_target` 等の危険トリガーで fork の未信頼コードを `actions/checkout` しない挙動をデフォルト化、workflow トリガーの許可ポリシー化、信頼度の低い workflow からの Actions cache 書き込み制限
- クレデンシャル窃取対策: npm trusted publishing の CircleCI 対応、Actions network firewall（Technical Preview）による outbound 通信ログ
- 攻撃拡散対策: npm staged publishing（公開時に 2FA 承認を必須化）、npm v12 での install scripts デフォルト無効化、Dependabot version updates への 3 日間 cooldown 導入
- 検知・対応: enterprise 単位のセルフサービス credential revocation、OAuth/App token への revocation API 拡張

<https://github.blog/security/supply-chain-security/disrupting-supply-chain-attacks-on-npm-and-github-actions/>

[[Blog|ブログ]]
