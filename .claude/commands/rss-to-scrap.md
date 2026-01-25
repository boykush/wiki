$ARGUMENTS RSSフィードURLから新着記事を取得し、scrapを作成してPRを出します

# 入力
$ARGUMENTS: RSSフィードのURL

# 処理フロー

1. $ARGUMENTS のRSSフィードをWebFetchで取得
2. XMLをパースし、過去24時間以内に公開された記事を抽出（最大5件）
3. 各記事について:
   a. MCPツール `search_scraps` で記事タイトルを検索
   b. 既存scrapがあればスキップ（「スキップ（既存scrap）: {title}」と出力）
   c. `gh pr list --search "{title}" --state open` でオープンPRを検索
   d. 同タイトルのPRがあればスキップ（「スキップ（オープンPR）: {title}」と出力）
   e. なければ `/scraps-writer:web-to-scrap {url}` を実行
   f. ブランチ作成、コミット、プッシュ
   g. gh pr create でPR作成
4. 処理結果のサマリーを出力

# 注意事項

- 記事ごとに別ブランチ・別PRを作成
- ブランチ名: rss-scrap/{タイトルのslug}
- 既存scrapとの重複チェックは必須
- **重要**: scrapのファイル名（タイトル）は、RSSフィードの記事タイトルと完全一致させること
  - 例: 記事タイトルが「Headlamp in 2025: Project Highlights」なら、ファイル名は `scraps/Headlamp in 2025: Project Highlights.md`
  - 短縮や要約は禁止
