#[[Security]] #[[Cloud Native]]

CRITICAL / HIGH の脆弱性を持つライブラリを patch 済みに差し替えた "zero-CVE base images" のレジストリ。ディストリのメジャーバージョンを上げず backport で修正するため drop-in replacement として使える

`FROM debian:bookworm` を `FROM docker.aikido.io/<token>/debian:bookworm` に書き換えるだけで適用でき、[[Aikido Security/Platform|Platform]] の AutoFix for Containers が [[Dockerfile]] の書き換え PR を生成する

OS レベルの CVE は patch 作成 SLA 付き、アプリレベルのパッケージは best-effort。[[SBOM]] / VEX / SLSA provenance を添付し、EOL 後の[[コンテナ]]イメージにも修正を提供する

<https://www.aikido.dev/cloud/hardened-images>
