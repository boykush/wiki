[[Nix]] のコードを共有するための entrypoint `flake.nix` を中心とした仕組み。`inputs`（依存の宣言）と `outputs`（提供する成果物）から成る

- `nix` コマンド実行時に `flake.lock` が生成され、inputs を exact version に pin する（依存側の inputs も再帰的に lock）。同一バージョンでの再現を容易にし、[[サプライチェーン攻撃]] の pinning 軸に効く
- default で pure mode（host 環境から隔離）で評価され再現性を促す。ただし pure mode でも再現性が保証されるわけではない
- 実験的機能（Nix 2.4 以降）。`experimental-features = [ "nix-command" "flakes" ]` 等で有効化する

<https://nix.dev/concepts/flakes>
