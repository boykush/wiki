#[[Security]]

[[zizmor]]の audit。workflow / job レベルの `permissions:` が、その job が実際に必要とする以上の write 権限を持っているケースを検出する

## 検出例

```yaml
permissions:
  id-token: write

jobs:
  build:
    runs-on: ubuntu-latest
  publish:
    runs-on: ubuntu-latest
    steps:
      - uses: pypa/gh-action-pypi-publish@...
```

## なぜ危険か

- 上の例は workflow ルートで `id-token: write` を宣言しており、実際に必要なのは `publish` job のみ。`build` job にも同じ権限が継承される
- `build` 内で third-party action が侵害された場合（[[zizmor/unpinned-uses]]）、本来不要な `id-token: write` も奪われる
- 被害は job が持つ token のスコープに比例する。[[最小権限の原則]]を CI トークンにも適用する

## 改善例

```yaml
permissions: {}

jobs:
  build:
    runs-on: ubuntu-latest
  publish:
    runs-on: ubuntu-latest
    permissions:
      id-token: write
    steps:
      - uses: pypa/gh-action-pypi-publish@...
```

<https://docs.zizmor.sh/audits/#excessive-permissions>
