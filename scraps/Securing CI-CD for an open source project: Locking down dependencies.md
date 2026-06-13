#[[Security]] #[[Continuous Integration]]

[[Cilium]] を題材に CI/CD 依存の固定・審査戦略を解説した [[CNCF]] ブログ記事（全3回の第2回）

- [[GitHub Actions]] の SHA pin: タグではなく 40 字コミット SHA で参照し、tag 書き換えによる[[サプライチェーン攻撃]]を防ぐ（[[CVE-2025-30066]] 型）
- [[Renovate]] 自動更新: `pinGitHubActionDigests` preset で SHA を自動管理、[[Renovate/minimumReleaseAge]] 5 日クールダウンで公開直後の悪意バージョンを回避
- Go ベンダリング: `vendor/` をリポジトリに commit し CI で `go.mod`/`go.sum` を検証、proxy 改ざんをレビュー可視に
- [[zizmor]] の [[zizmor/unpinned-uses]] audit で pin 漏れ検出、actionlint で runner image タグも固定
- CODEOWNERS で `vendor/` 変更者を限定し依存変更の承認ゲートを構築

<https://www.cncf.io/blog/2026/06/12/securing-ci-cd-for-an-open-source-project-locking-down-dependencies/>
