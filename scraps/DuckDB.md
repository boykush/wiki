#[[Data Engineering]]

ホストプロセス内に完全に埋め込まれて動作する、分析（[[OLAP]]）向けのリレーショナル DBMS。サーバーの導入が不要で、プロセス内で動くことによる高速なデータ受け渡しが特徴（Python では pandas のデータをコピーせずに直接クエリできる）

- columnar-vectorized クエリ実行エンジンを採用し、値のバッチ処理で分析クエリを高速化する
- 外部依存なしでビルドでき、Linux / macOS / Windows / ARM / WASM で動作するポータビリティを持つ。MIT ライセンス
- C / C++ / Go / Python / R / Rust / Java / Node.js などの API を提供する
- ACID・複雑な SQL・レイクハウス形式対応を備え、柔軟な拡張機構で新しいデータ型や関数を追加できる

<https://duckdb.org/why_duckdb>
