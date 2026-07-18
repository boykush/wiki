[[mise]] の `[dotfiles]` で dotfiles を宣言的に管理する機能。適用は `mise dotfiles apply` か [[mise/Bootstrap]] 経由のみで暗黙には走らず、冪等（適用済みは skip）

- `[settings]` の `dotfiles.root`（保管場所, 例 `~/.dotfiles`）と `dotfiles.default_mode`（既定 `symlink`）で挙動を決める
- whole-file エントリの mode: `symlink` / `symlink-each`（source ディレクトリ内の各ファイルを個別に symlink）/ `copy` / `template`（mise のテンプレートエンジンで描画）。source 省略時は target を `dotfiles.root` 配下にミラー、source path に glob 可
- mise 非所有のファイルは edit エントリで一部だけ管理: `block`（`# >>> mise:id >>>` マーカー区切りの複数行）/ `line`（無ければ末尾追記の1行）
- `mise dotfiles status`（applied/missing/differs 等を報告）/ `apply`（`--dry-run` `--force` `--yes`）/ `add`（稼働中のファイルを取り込み）/ `edit`
- 未管理ファイルは既定で置換を拒否し、`--force` で明示置換する

<https://mise.jdx.dev/dotfiles.html>
