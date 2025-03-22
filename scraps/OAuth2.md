#[[Security]] #[[API Architecture]] #[[Authorization]]

RFC6749によって定義された認可フレームワーク

主に以下の定義を利用する

### リソースオーナー（Resource Owner）
保護されたリソースへのアクセス許可を行うエンドユーザー

### リソースサーバー（Resource Server）
保護されたリソースを所有するサーバー、アクセストークンを受け取り検証する

### クライアント（Client）
リソースオーナーによる認可の委譲先、アクセストークンを使ってリソースサーバーへリクエスト可能

### 認可サーバー（Authorization Server）
リソースオーナーの認証・アクセス許可時に認可グランドを返却したのち、クライアントにアクセストークンを発行する


初回アクセストークン利用までのプロトコルの流れは以下

[Protocol Flow](https://datatracker.ietf.org/doc/html/rfc6749#section-1.2)

リソースオーナーによるアクセス許可時に認可サーバーが返す認可グランドは、認可コードが利用されることが多い

---

- [RFC 6749 - The OAuth 2.0 Authorization Framework](https://datatracker.ietf.org/doc/html/rfc6749)