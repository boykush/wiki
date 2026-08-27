[[mise]] の tool を exact version と checksum で固定する lockfile（`mise.lock`）

- [[mise/Backend|backend]] が対応すれば checksum で整合性を検証でき、commit すればチーム/CI で同一バージョンを再現（reproducible builds）できる。exact version を pin する点で [[サプライチェーン攻撃]] の pinning 軸に対応する

<https://mise.jdx.dev/dev-tools/mise-lock.html>
