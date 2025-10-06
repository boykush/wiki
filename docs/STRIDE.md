#[[Security]]

セキュリティ脆弱性をカテゴライズするような[[脅威モデリング]]での方法論

[[Microsoft Threat Modeling Tool]]ではSTRIDEを利用していくつかの自動分析を行うことができる

STRIDEは以下の頭文字を取ったもの

- Spoofing（なりすまし）
- Tampering（改ざん）
  - インジェクション攻撃
  - マスアサインメント攻撃
- Repudiation（否認）
- Information Disclosure（情報漏洩）
  - 過剰なデータ露出
  - 不適切なインベントリ管理
- Denial of Service（サービス拒否）
  - Dos攻撃
- Elevation of privilege（権限昇格）

---

- <https://learn.microsoft.com/ja-jp/azure/security/develop/threat-modeling-tool-threats#stride-model>