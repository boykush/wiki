#[[Data Engineering]]

[[DuckDB]]から稼働中の[[MySQL]]インスタンスへ直接データを読み書きするための拡張。ATTACH に key-value 形式の接続文字列（host / user / port / database など）を渡して接続する

- INSERT / UPDATE / DELETE / CREATE TABLE などの書き込み操作に対応し、READ_ONLY オプションで読み取り専用にもできる
- `CREATE TABLE ... AS FROM <db>.<table>` で MySQL テーブルを DuckDB 側へ複製でき、COPY ステートメントで[[Apache Parquet|Parquet]]形式へ直接エクスポートできる
- 認証情報は環境変数（MYSQL_HOST など）や secrets 機能で管理できる
- MySQL 側の DDL はトランザクション非対応。別接続でスキーマ変更した場合は mysql_clear_cache 関数でキャッシュを更新する

<https://duckdb.org/docs/current/core_extensions/mysql>
