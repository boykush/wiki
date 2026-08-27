#[[Security]] #[[Cloud Native]]

CRITICAL / HIGH の脆弱性を持つライブラリを patch 済みに差し替えた "zero-CVE base images" のレジストリ。ディストリのメジャーバージョンを上げず backport で修正するため drop-in replacement として使える

- [[Aikido Security/Platform|Platform]] の AutoFix for Containers が [[Dockerfile]] の差し替え PR を生成する
- [[SBOM]] / VEX / SLSA provenance を添付し、EOL 後の[[コンテナ]]イメージにも修正を提供する

<https://www.aikido.dev/cloud/hardened-images>
