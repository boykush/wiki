#[[LLM]] #[[Programming]]

Simon Willison が [[Claude Code]] (web版) と Claude Fable を使い、sqlite-utils 4.0rc2 リリース前の最終レビューと修正を記録したブログ記事

- 37 プロンプト・34 コミット・+1,321/-190 の変更（30 ファイル）でリリースブロッカー 5 件を修正
- 最重大バグ: `delete_where()` がコミットせず接続を汚染し、以降の書き込みもロールバックされるデータ損失
- GPT-5.5 xhigh による相互レビューでさらに 2 件の問題を追加発見・修正
- API 直接払い換算 $149.25（AgentsView で計測、メインセッション $141.02 が大半）

<https://simonwillison.net/2026/Jul/5/sqlite-utils-fable/>

[[Blog|ブログ]]
