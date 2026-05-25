#[[Security]]

[[zizmor]]の audit。`${{ ... }}` テンプレート展開で信頼できない入力（PR タイトル、issue body、commit message、外部 ref 等）を直接 shell コマンドや式に埋め込むパターンを検出する

## 検出例

```yaml
- run: |
    title="${{ github.event.issue.title }}"
```

## なぜ危険か

- 上の `${{ github.event.issue.title }}` は **shell 評価前に文字列置換**される — issue タイトルに `"; rm -rf /; #` のような文字列があるとそのまま shell コマンドとして実行される
- 攻撃者制御の文字列が直接 shell に混入し RCE
- [[zizmor/dangerous-triggers]]と組み合わさると secrets が即座に外部送信できる

## 改善例

```yaml
- run: |
    title="${ISSUE_TITLE}"
  env:
    ISSUE_TITLE: ${{ github.event.issue.title }}
```

<https://docs.zizmor.sh/audits/#template-injection>
