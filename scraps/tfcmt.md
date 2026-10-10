#[[Continuous Integration]]

[[Terraform]] の実行結果を [[GitHub]] の Pull Request にコメントとラベルで通知する CLI ツール（[[suzuki-shunsuke|@suzuki-shunsuke]] 製）。

- [[HCP Terraform]] を state の保管とロックだけに使う構成では、plan / apply は CI が実行し、その結果を Pull Request に返す役を tfcmt が担う

<https://github.com/suzuki-shunsuke/tfcmt>
