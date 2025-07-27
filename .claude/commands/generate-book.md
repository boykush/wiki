$ARGUMENTS タイトル書籍のscrapsファイルを生成します

書籍情報をWebから取得し、scraps template generateコマンドに引数を渡してください

# 手順
1. $ARGUMENTS タイトルでWeb検索をし、公式出版社ページ（タイトルの言語に対応）の情報を読み取り
2. 1から以下の各引数情報を特定
   1. SUBTITLE: 書籍サブタイトル
   2. AUTHOR: 著者
   3. TRANSLATOR: 訳者
   4. COVER: 書籍画像
   5. HOME_TITLE: 1のOGPタイトル
   6. HOME_URL: 1のURL
   7. TOC: 部、章、節レイヤの目次
3. 以下のコマンドを実行、なお取得できなかった引数は省略する
   1. 2-7に関してはヘッダー2以降を用いてレイヤを表現
```
SUBTITLE={2-1} AUTHOR={2-2} TRANLATOR={2-3} COVER={2-4} HOME_URL={2-5} TOC={2-6} scraps template generate book -t "$ARGUMENTS"
```
4. 生成されたファイル全体で既存のscrapsへのリンクを貼るべき点を提案