#[[Continuous Integration]]

[[GitHub]] の organization 単位でリポジトリに付与する構造化メタデータ（key-value）。org 側でプロパティのスキーマ（型・必須・デフォルト値）を定義し、各リポジトリに値を設定することで、リポジトリ群を org 横断で分類・フィルタしたり organization ruleset のターゲティング条件にしたりできる。2024-02 に GA。

- org でスキーマを一元定義できるため、[[Internal Developer Portal]] がリポジトリを取り込む際のネイティブなメタデータ源になり、`catalog-info.yaml` 等へ個別記述するメタデータを削減できる

<https://docs.github.com/en/organizations/managing-organization-settings/managing-custom-properties-for-repositories-in-your-organization>
