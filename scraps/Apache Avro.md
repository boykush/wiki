#[[Data Engineering]]

データシリアライゼーションシステム（公式には "a data serialization system"。"the leading serialization format for record data, and first choice for streaming data pipelines" と自己記述される）。JVM 系・Python・C / C++ / C#・Ruby・Rust・JavaScript など多言語の実装を持つ

- バイナリエンコードは型情報もフィールド名も含まず、解釈は完全にスキーマに依存する。reader が writer と異なるスキーマで読める schema resolution 規則がスキーマ進化（"excellent schema evolution"）を支える
- コンテナファイル（Object Container File）はヘッダに格納オブジェクトのスキーマを JSON で必須同梱するため、ファイル単体で自己記述的になる

<https://avro.apache.org/>
