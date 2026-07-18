[[mise/Bootstrap]] の1フェーズで、`[bootstrap.repos]` に宣言した git リポジトリを clone / 収束（更新）する

- path をキーに checkout 先を宣言し、各 repo に pre/post hook を挟める。`mise bootstrap repos apply` で適用、`status`（`--missing` で未取得のみ）で同期状態を確認する
- 適用時は dirty tree（未コミット変更）や origin mismatch を安全チェックし、意図しない上書きを防ぐ

<https://mise.jdx.dev/bootstrap.html>
