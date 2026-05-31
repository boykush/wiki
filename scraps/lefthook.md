#[[Continuous Integration]]

[[Git]] hooks マネージャ。[[Go]] 製単一バイナリで `lefthook.yml` に hook 定義を書き、`lefthook install` で `.git/hooks/` に展開する。Evil Martians がメンテナンス

- [[pre-commit]] / `pre-push` / `commit-msg` 等の hook 種別をサポートし、カスタムタスクグループも作れる
- ジョブを並列実行でき、glob / regex によるファイル絞り込み、tag でグループ単位の実行制御
- ローカル上書き用に `lefthook-local.yml` を分離可能

<https://lefthook.dev/>
<https://github.com/evilmartians/lefthook>
