#[[Network]] #[[Security]]

[[Cloudflare]] とオリジンをつなぐ仕組み。オリジン側で動く `cloudflared` が Cloudflare へ外向きの接続だけを張るので、オリジンに公開 IP や受信の穴を開けずにサービスを公開できる

- [[Kubernetes]] では `cloudflared` を Pod として動かせば、[[Kubernetes/Service]] を ClusterIP のまま外へ出せる
- 1本の tunnel でホスト名ごとに転送先を振り分けられる。振り分けの設定を Cloudflare 側に置く形にすると、[[Terraform]] で管理できる

<https://developers.cloudflare.com/tunnel/>
