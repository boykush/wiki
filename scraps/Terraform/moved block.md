#[[Continuous Delivery]]

[[Terraform]] でリソースのアドレスを変えたことを宣言するブロック。`from` に古いアドレス、`to` に新しいアドレスを書くと、作り直さずに state 上の位置だけを移す

- リソース名、`for_each` のキー、module の呼び出し名を変えるときに使う

<https://developer.hashicorp.com/terraform/language/block/moved>
