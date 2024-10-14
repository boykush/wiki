#[[Security]]

トークンを保持するBearer（持参人）が誰であれ、そのトークンをリソースへのアクセスに使うことができる

平文の文字列でシークレットや署名は扱わず、セキュリティは[[TLS]]のようなトランスポート層での仕組みに任せている

HTTP通信の`Authorization`ヘッダーに付与するのを推奨されている

---

[RFC 6750 - The OAuth 2.0 Authorization Framework: Bearer Token Usage](https://tex2e.github.io/rfc-translater/html/rfc6750)