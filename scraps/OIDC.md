## OpenID Connect

![](https://openid.net/wp-content/uploads/2022/11/df-l-oix-l-openid_rgb-300dpi.png)

#[[Security]] #[[Authentication]] #[[Authorization]]

[[OAuth2]]フレームワークにおいてクライアントがリソースオーナー（エンドユーザ）の身元を知りたいケースに利用される方法論、[[OAuth2]]の追加機能としてアイデンティティ層が足される

クライアントによるアクセストークン発行時、`openid`スコープをリクエストすることでアクセストークンに加えてIDトークン（[[JWT]]）を得ることができる。IDトークンには識別子以外のEメールやプロフィール等の豊富なユーザ情報を含められる

---

- [How OpenID Connect Works - OpenID Foundation](https://openid.net/foundation/how-connect-works/)
- [Authenticating | Kubernetes](https://kubernetes.io/docs/reference/access-authn-authz/authentication/#openid-connect-tokens)
