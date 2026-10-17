---
type: Tool
---

#[[Security/Authentication]]

[[Cloudflare]] を経由するアプリケーションに、任意の認証手段を提供できる仕組み。

- One-time PIN：メールに届くコードでログインする
- GitHub などの [[IdP]] にログインを任せる
- 通したリクエストには Access が署名した [[JWT]] が付き、後ろのアプリが確かめれば、Access を通らないリクエストを断れる

<https://developers.cloudflare.com/cloudflare-one/access-controls/>
