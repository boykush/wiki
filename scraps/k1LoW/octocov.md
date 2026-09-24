#[[Testing]] #[[Continuous Integration]]

[[Go]]言語で書かれたコードメトリクス収集ツール（公式には "a toolkit for collecting code metrics"）

コードカバレッジ、code to test ratio、テスト実行時間を計測し、[[GitHub Actions]]上でプルリクエストへのコメント、バッジ、Job Summaryとして可視化する

[[cargo-llvm-cov]]が出力するLCOVなど複数のカバレッジレポート形式を読み込むため、言語を問わず同じ見せ方に揃う

central modeでは複数リポジトリのレポートを1つのリポジトリへ集約する

<https://github.com/k1LoW/octocov>
