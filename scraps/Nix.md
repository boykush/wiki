#[[Programming]]

パッケージを「副作用のない関数の出力」として扱い、ビルド後は不変とする purely functional な package manager

- 各パッケージは `/nix/store` 配下に置かれ、パス名は build dependency graph 全体の暗号学的ハッシュで決まる（content-addressed）
- ビルドは deterministic（同じ式を 2 回ビルドすれば同じ結果になる）
- 上書きせず別パスに追加するため upgrade / rollback が atomic で、旧バージョンが残る
- 複数バージョンを同時に併存でき、依存衝突（"DLL hell"）を避けられる

<https://nix.dev/manual/nix/stable/introduction>
