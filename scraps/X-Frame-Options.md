#[[Security]] #[[Network]]

[[HTTP]]レスポンスヘッダの一つで、ブラウザがページを`<frame>`、`<iframe>`、`<embed>`、`<object>`内にレンダリングすることを許可するかを制御する

クリックジャッキング攻撃を防ぐために使用される

ディレクティブは以下の3つ

- `DENY`: すべてのドメインからのフレーム埋め込みを禁止
- `SAMEORIGIN`: 同一オリジンからのフレーム埋め込みのみ許可
- `ALLOW-FROM`: 特定のURIからのフレーム埋め込みを許可（廃止済み、モダンブラウザでは動作しない）

現在は非推奨のヘッダーとなっており、[[Content-Security-Policy]]の`frame-ancestors`ディレクティブの使用が推奨される

<https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options>
