[[mise]] の設定に沿ってマシンを1コマンドで宣言的にセットアップする機能（`mise bootstrap`）。各フェーズを冪等に収束させ、既に満たされていれば skip する

- 適用フェーズ: [[mise/Bootstrap Packages|OS packages]] → [[mise/Bootstrap Repos|git repos]] → [[mise/Dotfiles|dotfiles]] → [[mise/Shell activation|shell activation]] → [[mise/macOS defaults|macOS defaults]] → LaunchAgents / systemd user units → login shell 等の user 設定 → [[mise/Dev Tools|tools]] → 最終 [[mise/Task|bootstrap task]]
- 各フェーズは config セクション（`[bootstrap.packages]` `[bootstrap.repos]` `[dotfiles]` `[bootstrap.macos.*]` `[bootstrap.mise_shell_activate]` 等）に対応し、`mise bootstrap <part>`（`packages` / `repos` / `dotfiles` / `macos` …）で個別適用もできる
- 各フェーズの前後には [[mise/Bootstrap hooks|hooks]] で任意コマンドを差し込める
- `mise bootstrap status`（alias `ls`）で sync 状態・drift を確認。主なフラグは `--dry-run` `--yes` `--skip` `--only` `--force-dotfiles` `--update`
- mise 未導入環境向けに導入スクリプトを生成する [[mise/generate bootstrap|mise generate bootstrap]] とは別機能

<https://mise.jdx.dev/bootstrap.html>
<https://mise.jdx.dev/cli/bootstrap.html>
