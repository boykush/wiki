## DigitalOcean Kubernetes

#[[Cloud Native]]

[[DigitalOcean]] が提供するマネージドな [[Kubernetes]]。control plane は DigitalOcean が無料で運用し、課金は worker node の分だけかかる。

- worker node の実体は Droplet で、Droplet と同じ単価の秒課金。node pool を 0 台にすれば、クラスタを残したまま費用を止められる
- control plane の HA は有料の追加機能
- patch の更新は、指定した maintenance window の中で自動で適用できる

<https://docs.digitalocean.com/products/kubernetes/>
