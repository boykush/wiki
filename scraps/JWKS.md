## JSON Web Key Set

#[[Security/Authentication]] #[[Security/Cryptography]]

[[JWT]]の署名検証に用いる公開鍵群を[[JSON]]形式で表現する仕様（RFC 7517）。各キーは`kid`（Key ID）・`kty`（鍵種別）・`alg`（署名アルゴリズム）などのフィールドを持ち、配列としてまとめられる

JWT認証プロバイダーは`/.well-known/jwks.json`のようなエンドポイントで公開し、リライングパーティはJWTヘッダーの`kid`で該当キーを選択して署名を検証する。鍵ローテーションは新旧キーの並存で実現する

---

[RFC 7517 - JSON Web Key (JWK)](https://datatracker.ietf.org/doc/html/rfc7517)
