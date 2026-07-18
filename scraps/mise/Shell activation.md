[[mise/Bootstrap]] の1フェーズで、`[bootstrap.mise_shell_activate]` に基づき shell の rc ファイルに mise の activation スニペット（`mise activate` 相当）を marker 区切りで書き込む

- marker で囲まれたブロックのみを mise が管理するため、rc ファイルの他の記述を壊さず冪等に更新できる
- `mise bootstrap shell apply`（`mise-shell-activate`）で適用し、`status` で導入状態を確認する

<https://mise.jdx.dev/cli/bootstrap.html>
