## Large Language Model Wiki

#[[LLM]] #[[Documentation]]

[[Andrej Karpathy]]が提唱した、LLMが構造化されたmarkdown wikiを継続的に構築・保守する個人ナレッジベースのパターン。

- 3層構成: Raw Sources（不変の一次資料）、Wiki（LLMが生成・更新するmarkdown群）、Schema（構造と運用規約の設定ファイル）
- 3つのコアプリミティブ: Ingest（新規ソースを既存ページへ統合）、Query（wikiを検索して回答し、価値ある結果は新ページとしてfile back）、Lint（矛盾・古い記述・orphanページ・cross-reference欠落を定期検査）
- 動機は「ナレッジベース保守の面倒な部分は読むことや考えることではなく、bookkeeping」という洞察。人間はsource curationと問いに集中し、bookkeepingはLLMに委譲する

<https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f>
