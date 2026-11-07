---
sources:
  - resource: "https://configcat.com/docs/change-requests/"
  - resource: "https://github.com/configcat/terraform-provider-configcat"
---

#[[Continuous Delivery]]

[[ConfigCat]] の機能で、設定した日時に[[フィーチャーフラグ]]の変更を適用できる予約機能。承認と組み合わせることで、予約日時までに承認があったら適用、のような条件を組むこともできる

- [[Terraform]] の provider は承認フローの設定（承認を必須にする環境、承認の権限、`bypass_approval`）には対応しているが、予約は対象外（v5.10.0 時点）
