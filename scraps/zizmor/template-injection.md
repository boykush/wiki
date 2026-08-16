#[[Security]]

[[zizmor]]の audit。`${{ ... }}` テンプレート展開で信頼できない入力（PR タイトル、issue body、commit message、外部 ref 等）を直接 shell コマンドや式に埋め込むパターンを検出する

- 展開は shell 評価**前**の文字列置換なので、攻撃者が制御する文字列がそのままコマンドとして実行され RCE に至る
- [[zizmor/dangerous-triggers]]と組み合わさると secrets が即座に外部送信できる

<https://docs.zizmor.sh/audits/#template-injection>
