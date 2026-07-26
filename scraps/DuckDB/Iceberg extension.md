#[[Data Engineering]]

[[DuckDB]]に[[Apache Iceberg]]オープンテーブルフォーマットのサポートを実装する拡張。初回使用時に自動でインストール・ロードされる

- 2 つのモードを持つ: テーブルのメタデータを直接指す読み取り専用アクセス（カタログ不要）と、Iceberg REST catalog への ATTACH によるカタログ管理テーブルアクセス（フル機能）
- 対応カタログとして Amazon S3 Tables・AWS Glue・Cloudflare R2・Polaris・Lakekeeper・BigLake が挙げられ、オブジェクトストレージへは httpfs / azure 拡張と連携してアクセスする
- v1.5.3（2026-05）で MERGE INTO・ALTER TABLE・パーティション変換・Iceberg V3 サポートが追加された

<https://duckdb.org/docs/current/core_extensions/iceberg/overview>
