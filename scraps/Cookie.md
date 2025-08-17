#[[Security]] #[[HTTP]]

いくつかの属性を持つ

### Secure
[[HTTPS]]通信を強制する

### HttpOnly
[[JavaScript]]のようなスクリプトからのCookieアクセスを無効にする

### SameSite
別ドメインへのCookie送信を許可するレベル

- Strict
- Lax
- None

の3段階がある

### Domain and Path
Cookieの対象とするドメイン範囲、Domainのデフォルトはオリジンとなる。Pathによってアプリケーションの一部のみを対象とすることができるが推奨されない

### Expire and Max-Age
Cookieに永続性を持たせる属性。ブラウザのセッションとして扱うケースでは推奨されない