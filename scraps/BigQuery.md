#[[Data Engineering]]

[[Google Cloud]]上で提供されるフルマネージドのデータプラットフォーム（公式には "a fully managed, AI-ready data platform"）。機械学習・検索・地理空間分析・BI などの機能を組み込みで持ち、サーバーレスアーキテクチャによりインフラ管理なしで SQL や Python から分析できる

- ストレージとコンピュートが分離されており、ペタビットスケールのネットワークで接続された 2 層が互いのパフォーマンスに影響を与えず独立にリソースを割り当てる
- ANSI 標準 SQL（ISO/IEC 9075 サポート）と Python API（BigQuery DataFrames）を備え、コンソール・bq CLI・クライアントライブラリ・ODBC/JDBC ドライバから利用できる
- ストレージは分析クエリに最適化された列指向フォーマットで、自動的にレプリケーションされる
- オープンテーブルフォーマットとして [[Apache Iceberg]]・Delta Lake・Apache Hudi をサポートし、顧客所有の Cloud Storage バケット上のデータも扱える

<https://docs.cloud.google.com/bigquery/docs/introduction>
