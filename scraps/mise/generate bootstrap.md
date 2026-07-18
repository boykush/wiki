[[mise]] 未導入の環境向けに、mise を DL して実行するブートストラップスクリプトを生成する `mise generate bootstrap`。contributor が mise を入れずともプロジェクトのセットアップを走らせられるようにする

- `-w/--write <path>` でファイルに書き出して実行権限を付与（例: `bin/` に置いて commit）、`-V/--version` で DL する mise バージョンを固定
- `-l/--localize` で `MISE_DATA_DIR` / `MISE_CACHE_DIR` を project 内の `.mise`（`--localized-dir` で変更可）に sandbox し、既存の mise と衝突させない
- 宣言的にマシンを収束させる `mise bootstrap` とは別機能（こちらは mise 自体を導入するスクリプトの生成）

<https://mise.jdx.dev/cli/generate/bootstrap.html>
