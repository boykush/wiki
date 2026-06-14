[[GitHub]]の organization レベルで定義する Issue のメタデータフィールド（2026 public preview）。org 内の全リポジトリの Issue に自動適用される

- フィールド型は single select / text / number / date の4種で、issue type ごとに表示を pin できる
- 値は Issue 自体に保存され、organization 全体で一貫したメタデータを与える
- REST / GraphQL / webhook で検索・フィルタ・自動化できる
- 設定は organization Settings → Planning → Issue fields。リポジトリ単位の定義は不可

<https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/managing-issue-fields-in-your-organization>
