#[[Derived Data]]

Unixのプロセスと同様の特徴を持つ分散ファイルシステム上のバッチ処理フレームワーク。

MapReduceジョブは以下の2つに分かれる

- Mapper
  - 分散ファイルシステムの各レコードからキーと値のコレクションを抽出する
- Reducer
  - mapperによって生成されたキーと値のコレクションからコレクションに対するイテレータとともに関数を適用し出力レコードを適用する

HadoopのMapReduce実装ではHDFS(Hadoop Destributed File System)と呼ばれる分散ファイルシステムが用いられる