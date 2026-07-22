#[[Data Engineering]]

分析データセット向けのオープンテーブルフォーマット（公式には "The open table format for analytic datasets"）。オブジェクトストレージ上のデータファイルに SQL テーブルの信頼性とシンプルさをもたらす仕様で、Spark・Trino・Flink・Hive など複数のエンジンが同一テーブルへ同時アクセスできる

- スキーマ進化: 列の追加・リネーム・並べ替えを安全に行える（zombie data を発生させない）
- 隠蔽パーティショニング: 行からのパーティション値生成をテーブル側が担い、不要なパーティションの読み取りをスキップする
- タイムトラベル: 同一スナップショットを参照する再現可能なクエリ
- MERGE INTO / UPDATE / DELETE と、ファイルレイアウト最適化（コンパクション）に対応

<https://iceberg.apache.org/>
