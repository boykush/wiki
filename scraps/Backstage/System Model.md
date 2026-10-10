#[[Software Design]]

[[Backstage/Software Catalog]] がソフトウェアを表すための entity の体系。Component（ソフトウェアの単位）、API（Component 間の境界）、Resource（実行時に要るインフラ）を中心に、それらを System、さらに Domain でまとめる

- Component は `providesApis` / `consumesApis` / `dependsOn` で、API や Resource との関係を持つ

<https://backstage.io/docs/features/software-catalog/system-model/>
