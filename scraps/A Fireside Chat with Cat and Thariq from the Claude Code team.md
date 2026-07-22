#[[LLM]]

Simon Willison が AI Engineer World's Fair で開催した、Anthropic [[Claude Code]] チームの Cat Wu・Thariq Shihipar とのファイヤーサイドチャットの書き起こし

- Claude Tag（Slack 常駐の協働エージェント）が Anthropic 社内の product engineering PR の65%をランドしている
- [[Claude Code]] の system prompt はサイズが80%削減された。例示の追加や「〜するな」という禁止列挙の羅列は、[[Claude Fable/5]]や[[Claude Opus/4.8]]のような最新モデルではもはやbest practiceではない
- 重要領域は code owner が手動レビューする一方、"outer layers" は自動コードレビューへの委譲を拡大中
- 社内では auto mode を強く信頼しており、prompt injection やデータ漏洩のリスクは平均的な人間レビュアーより低いと主張。Claude Tag も auto mode 上に構築されている
- [[Claude Code/Remote Control]] は「就寝前にラップトップを充電器に挿し、ソファでスマホから操作する」という想定外の使われ方で人気に
- Fable は動画編集に長けており、自らのローンチ動画の編集にも使われた

<https://simonwillison.net/2026/Jul/21/cat-and-thariq/>

[[Blog|ブログ]]
