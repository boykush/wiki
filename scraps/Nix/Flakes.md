[[Nix]] のコードを共有するための entrypoint `flake.nix` を中心とした仕組み。`inputs`（依存の宣言）と `outputs`（提供する成果物）から成る

- `nix` コマンド実行時に `flake.lock` が生成され、inputs を exact version に pin する。同一バージョンでの再現を容易にし、[[サプライチェーン攻撃]] の pinning 軸に効く

<https://nix.dev/concepts/flakes>
