#[[Security]] #[[LLM]]

[[GitHub]] と Microsoft Security & AI による Secret Scanning の偽陽性削減の取り組み

シークレット候補に LLM 推論による文脈検証ステップを追加する。変数代入 → API リクエスト・認証ヘッダー・DB クライアント・クラウド SDK への受け渡しパターンを重点的に分析し、テストデータや未使用設定値を除外する

- 目標 65% に対し **75.76%** の偽陽性削減を達成（検出性能は維持）
- ファイル全体を渡さず高シグナルな文脈情報に絞ることで実用的な精度を実現
- 対象規模: 数十億 push・数千万の開発者・数百万のリポジトリ

[[DevSecOps]] のアラートノイズ削減に LLM を活用する事例

<https://github.blog/security/making-secret-scanning-more-trustworthy-reducing-false-positives-at-scale/>
