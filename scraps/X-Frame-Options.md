#[[Security]] #[[Network]]

クリックジャッキング攻撃を防ぐための[[HTTP]]レスポンスヘッダー

ページが`<frame>`、`<iframe>`、`<embed>`、`<object>`内で表示されることを制御する

設定値は以下の3つ

- DENY: すべてのフレーム表示を禁止
- SAMEORIGIN: 同一オリジンのみフレーム表示を許可
- ALLOW-FROM URI: 特定のURIからのフレーム表示を許可（非推奨）

現在はCSPの`frame-ancestors`ディレクティブの使用が推奨されている

<https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/X-Frame-Options>
