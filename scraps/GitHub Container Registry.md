#[[Continuous Integration]]

[[GitHub]] が提供する[[コンテナ]]イメージのレジストリ（`ghcr.io`）

- [[GitHub Actions]] からは [[GITHUB_TOKEN]] で push できる
- image に [[Open Container Initiative|OCI]] の `org.opencontainers.image.source` ラベルを付けると、パッケージがリポジトリに結び付く
- 初めて公開したパッケージは private になるので、誰でも pull できるようにするには public へ変える

<https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry>
