#[[Continuous Delivery]]

[[Terraform]] の外で作られた既存のリソースを state に取り込む宣言。`import` ブロックに取り込み先のアドレスと ID を書くと、`terraform apply` の中で取り込まれる

- CLI の `terraform import` と違い、plan で確かめてから CI の apply で取り込める
- root module にしか書けないので、module の中のリソースは完全なアドレスで指す

<https://developer.hashicorp.com/terraform/language/import>
