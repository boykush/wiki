#[[Security]]

2026年7月17日公開。WordPress 6.9.x / 7.0.x に存在する2つの脆弱性を連鎖させた Pre-Auth RCE 攻撃チェーン「wp2shell」の概要と対応指針（GMO Flatt Security リサーチチームによる解説）

- **CVE-2026-60137（SQLインジェクション）**: `WP_Query::get_posts()` の `author__not_in` パラメータにスカラー値を渡すと `absint()` によるサニタイズをスキップし、SQL の `NOT IN` 句へ直接連結される。WordPress 6.8.0以降に存在したが、6.8系ではデフォルト構成で外部からの入力経路がなかった
- **CVE-2026-63030（REST API バッチルート混同）**: `/batch/v1` の `serve_batch_request_v1()` で、バリデーションエラーのサブリクエストに対して `$matches` が追加されず、後続処理でインデックスがズレる。6.9.0以降で発生し、CVE-2026-60137への外部入力経路を提供してRCEが成立
- 攻撃入口: `POST /wp-json/batch/v1` または `POST /?rest_route=/batch/v1`（`_method`パラメータ・`X-HTTP-Method-Override`ヘッダによるメソッド上書きにも注意）
- 影響バージョン: 6.9.0–6.9.4・7.0.0–7.0.1（wp2shell RCE）、6.8.0–6.8.5（CVE-2026-60137のみ）
- 根本対策: 7.0.2 / 6.9.5 / 6.8.6 へ更新
- 緩和策①: WAFで `/wp-json/batch/v1` と `rest_route=/batch/v1` の両形式をHTTPメソッド限定なしで遮断
- 緩和策②: `rest_pre_dispatch` フィルタで `/batch/v1` への未認証アクセスを HTTP 401 で拒否

<https://blog.flatt.tech/entry/wp2shell_wordpress>

[[Blog|ブログ]]
