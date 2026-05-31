[[mise]] の tool を exact version と checksum で固定する lockfile（`mise.lock`）

- `mise.toml` の `[tools]` はバージョン指定のままで、`mise.lock` が検証データを持つという役割分離
- OS-arch ペア（`linux-x64`, `macos-arm64` 等）ごとに exact version / SHA256 または Blake3 hash / file size / 取得元 URL を記録する
- 有効化は `[settings]` の `lockfile = true`。自動生成はされず `mise lock` で生成する
- [[mise/Backend|backend]] が対応すれば checksum で整合性を検証でき、commit すればチーム/CI で同一バージョンを再現（reproducible builds）できる。exact version を pin する点で [[サプライチェーン攻撃]] の pinning 軸に対応する

<https://mise.jdx.dev/dev-tools/mise-lock.html>
