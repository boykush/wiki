#[[Programming]] #[[Data Engineering]]

Simon Willison が2026年7月にリリースした sqlite-utils のメジャーバージョン（2020年の3.0以来）。

- **Database migrations**: `Migrations` クラスで順序付き変更を定義・追跡。`uvx sqlite-utils migrate` で適用し `_sqlite_migrations` テーブルで管理
- **Nested transactions**: `db.atomic()` コンテキストマネージャ（SQLite Savepoints でネスト対応）
- **Compound foreign keys**: 複合外部キーの作成・変換・イントロスペクションをサポート
- [[Claude]] Fable 5 が API 設計・bug 再現（12スクリプト）を担い、4件のリリースブロッカーを検出
- 旧パッケージ `sqlite-migrate` は `sqlite-utils>=4` に依存する thin wrapper として継続

<https://simonwillison.net/2026/Jul/7/sqlite-utils-4/#atom-entries>

[[Blog|ブログ]]
