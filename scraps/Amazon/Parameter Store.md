#[[Security]]

[[AWS]]の Systems Manager が持つ設定値の保管庫。型は `String` / `StringList` / `SecureString` の3つで、`SecureString` は[[Amazon/KMS]]で暗号化されるため[[SMS]]としても使える

**standard tier は無料**——保管も standard throughput の API 呼び出しも課金されない。1 parameter 4KB、1リージョンあたり 10,000 個まで。advanced tier は 8KB / 100,000 個に広がる代わりに $0.05/parameter/月 と API 課金が付く

[[Amazon/Secrets Manager]]（$0.40/secret/月）と分かれている軸は**ローテーション機構の有無**。鍵の入れ替えを AWS に任せないなら Parameter Store で足りる

---

- [AWS Systems Manager Parameter Store](https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-parameter-store.html)
- [AWS Systems Manager Pricing](https://aws.amazon.com/systems-manager/pricing/)
