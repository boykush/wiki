#[[Continuous Delivery]]

[[Terraform]] が `terraform init` で作る `.terraform.lock.hcl`。選んだ provider の version と checksum を記録し、commit しておくと、どこで実行しても同じ provider が選ばれる

- 他の platform の checksum は `terraform providers lock -platform=...` で足す
- [[Renovate]] は `rangeStrategy: update-lockfile` で、lock file の version だけを上げる更新を出せる

<https://developer.hashicorp.com/terraform/language/files/dependency-lock>
