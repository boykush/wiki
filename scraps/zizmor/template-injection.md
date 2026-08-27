#[[Security]]

[[zizmor]]の audit。`${{ ... }}` テンプレート展開で信頼できない入力（PR タイトル、issue body、commit message、外部 ref 等）を直接 shell コマンドや式に埋め込むパターンを検出する

- [[zizmor/dangerous-triggers]]と組み合わさると secrets が即座に外部送信できる

<https://docs.zizmor.sh/audits/#template-injection>
