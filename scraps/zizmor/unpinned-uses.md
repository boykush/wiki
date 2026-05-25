#[[Security]]

[[zizmor]]の audit。`uses:` で third-party action を tag や branch 名（`@v3`、`@main`）で参照し、コミット[[SHA]]で pin していないケースを検出する

## 検出例

```yaml
- uses: pypa/gh-action-pypi-publish@v1.12.4
- uses: docker://ubuntu
```

## なぜ危険か

- 上の `@v1.12.4` (action tag) や `docker://ubuntu` (image tag 省略) は publisher 側で参照先を書き換え可能 — 過去に正当だったタグが後日マルウェア入りコミットを指すよう移動されると、CI を信用しているワークフロー全てが侵害される
- 近年の `tj-actions/changed-files` 事件はこのパターン: 同一 tag が遡及的に汚染されたコミットへ rebound された
- SHA は immutable なので、内容が変わらないことを暗号学的に保証できる

## 改善例

```yaml
- uses: pypa/gh-action-pypi-publish@76f52bc884231f62b9a034ebfe128415bbaabdfc  # v1.12.4
- uses: docker://ubuntu:24.04
```

<https://docs.zizmor.sh/audits/#unpinned-uses>
