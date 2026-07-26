#[[Data Engineering]]

[[DuckDB]]で[[Apache Avro]]ファイルの読み取りを可能にする拡張。2024 年後半にコミュニティ拡張として登場し、2025 年初頭にコア拡張へ昇格した

- `read_avro` 関数で読み取る。ローカル・HTTP・S3 系のソースや、glob・ファイルリストによる複数ファイル指定に対応する
- 再帰型定義を除くすべての Avro 型を DuckDB の型へ変換できる。union と null の組み合わせは非 null 型へ自動的に簡約される
- ドキュメント記載の制限として、単一ファイル内の並列読み取り、プロジェクション/フィルタのプッシュダウン、外部 Avro スキーマファイルの指定は未対応

<https://duckdb.org/docs/current/core_extensions/avro>
