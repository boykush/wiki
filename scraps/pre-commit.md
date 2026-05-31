#[[Continuous Integration]]

`git commit` 実行時に自動で呼ばれる Git クライアントサイド hook。`.git/hooks/pre-commit` に実行可能スクリプトを置くだけで有効になる

- コミット作成前に実行され、非ゼロで終了すると commit が中断される
- 引数は渡されず、ステージ済みの変更を検査する用途が一般的（lint・format・シークレットスキャン等）
- `git commit --no-verify` で bypass できる

<https://git-scm.com/docs/githooks#_pre_commit>
