#[[Security]]

release file / container image / binary / SBOM 等の software artifact を署名・検証し、ソフトウェアサプライチェーンの安全性向上を目的とする OSS プロジェクト

- 鍵ではなく [[OIDC]] identity（email / service account / CI workflow 等）に署名を紐付ける identity-based / keyless 方式が核。長命な署名鍵なしに [[署名検証]] を成立させ、[[サプライチェーン攻撃]] の由来検証軸を担う
- OpenSSF（[[Linux Foundation]]）が主導

<https://docs.sigstore.dev/about/overview/>
