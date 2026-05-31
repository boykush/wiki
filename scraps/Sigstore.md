#[[Security]]

release file / container image / binary / SBOM 等の software artifact を署名・検証し、ソフトウェアサプライチェーンの安全性向上を目的とする OSS プロジェクト

- 鍵ではなく [[OIDC]] identity（email / service account / CI workflow 等）に署名を紐付ける identity-based / keyless 方式が核。長命な署名鍵なしに [[署名検証]] を成立させ、[[サプライチェーン攻撃]] の由来検証軸を担う
- 署名は ephemeral key 生成 → Fulcio（CA）が identity に紐付く短命証明書を発行 → 署名イベントを Rekor（append-only な透明性ログ）に記録し、検証はログ経由で行う
- OpenSSF（[[Linux Foundation]]）が主導

<https://docs.sigstore.dev/about/overview/>
