[[aqua]] を [[mise/Backend|backend]] として使う形態。`aqua:owner/repo` で参照する（例 `aqua:BurntSushi/ripgrep`）

- aqua registry が mise binary に同梱され、別途 aqua 本体なしで利用できる（default は official registry）
- インストール時に mise が native に検証する: checksum（SHA256/SHA512/SHA1/MD5, 常時有効）に加え Cosign 署名 / SLSA provenance / GitHub Artifact Attestations。checksum を超えた [[署名検証]]（由来検証）まで担える
- mise は plugin 不要・Windows 対応・上記セキュリティを理由に、新規 tool では aqua backend を推奨する

<https://mise.jdx.dev/dev-tools/backends/aqua.html>
