#[[Testing]]

[[Scala]]向けのミューテーションテストフレームワーク。コードへ一時的にバグを埋め込み、テストが落ちるかどうかで[[ユニットテスト]]自体の検知力を測る

- 埋め込んだ変異はkilled（テストが落ちた）・survived（全て通ってしまった）・no coverageなどに分類され、mutation score = detected / valid × 100 として集計される
- カバレッジが「その行を通ったか」を測るのに対し、こちらは「壊したときに気づけるか」を測る
- sbt・Maven・Millのプラグインを提供する
- JavaScript版・.NET版を持つStrykerと同じエコシステム

<https://stryker-mutator.io/docs/stryker4s/>
