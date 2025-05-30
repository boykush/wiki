## JSON Web Token

#[[Security]] #[[Authentication]]

トークン自体の情報（例: 期限）を自身で構造化して保持することで、共有データベースへ保持・検索をする必要がないトークン。トークンが自身の情報を持つことで外部からのトークン取り消しのような操作はできない

JWTは`.`によって3つのセクションの文字列に分割できる（署名がない場合3つ目のセクションは空）

それぞれのセクションの文字列は構造化された[[JSON]]を[[Base64]]URLエンコードした結果となっている

## ヘッダー
1つ目のセクションはヘッダーとして以下のような構造を持つ

```
{
    "typ": "JWT",
    "alg": "RSA256"
}
```

`alg`で指定する署名アルゴリズムは3つ目の署名セクションの解読にて用いる

## ペイロード
2つ目のセクションはトークン自体のペイロードになる。ペイロードの中身はJSONであれば自由だが、JWTクレームと呼ばれる役割が明示・明示された項目群が存在する。

例として　`iss`（発行者）、`sub`（対象者）、`exp`（有効期限）などがある

## 署名
3つ目のセクションは[[HMAC]]や[[RSA]]のような署名アルゴリズムを使った結果が保持される

---

[RFC 7519 - JSON Web Token (JWT)](https://tex2e.github.io/rfc-translater/html/rfc7519)