[[mise]] の [[mise/Task]] を monorepo 全体で扱う機能。root `mise.toml` の `monorepo_root = true` で有効化し、サブディレクトリの config を project として発見する

- task ID は root からのパスで `//path/to/project:task`。カレント config root は `:task`、`...` が任意深さ、`*` が task 名のワイルドカードにあたる
- project は `[monorepo]` の `config_roots` で明示宣言するほか、workspace provider（Cargo / uv / Go / Node / custom）が ecosystem のメタデータから project と依存辺を推論する。task の取り込みは `task.auto_infer` による provider 単位の opt-in
- `[monorepo.task_defaults.<name>]` で同名 task の共通設定を root に集約でき、`depends` の `^task` は上流 project の同名 task を先に実行する。`mise run --affected <task>` は git 差分から影響 project とその下流のみを選ぶ

<https://mise.jdx.dev/tasks/monorepo.html>
