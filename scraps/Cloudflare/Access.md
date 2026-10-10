#[[Security/Authentication]]

[[Cloudflare]] の前段でログインとポリシーを確かめてから、リクエストをアプリケーションへ通す仕組み。通したリクエストには、Access が署名した [[JWT]] が `Cf-Access-Jwt-Assertion` ヘッダで付く

- ログインには GitHub などの [[IdP]] を使える
- Managed OAuth を有効にすると、[[MCP]] クライアントが [[OAuth2]] で token を取る入口になる。このとき JWT の検証は MCP サーバーの側で行う
- policy を Bypass にしたパスは、ログインなしで通せる

<https://developers.cloudflare.com/cloudflare-one/access-controls/>
