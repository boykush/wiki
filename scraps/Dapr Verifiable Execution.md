#[[Cloud Native]] #[[Security]]

[[Dapr]] 1.18 で導入された、分散システムにおけるワークフロー実行の完全性を暗号学的に証明・検証するしくみ

- **Workflow History Signing**: ワークフロー履歴に暗号署名を付与し、改ざん防止の実行記録を生成する
- **Workflow History Propagation**: 実行リネージをリクエストとともに伝播させ、下流サービスが起源とイベント順序を把握できるようにする
- **Workflow Attestation**: 検証済みプロベナンスに基づく判断をアプリケーションに提供する
- SPIFFE ベースのワークロードアイデンティティ上に構築し、「誰か」に加えて「どのように到達したか」を証明する

<https://www.cncf.io/blog/2026/06/11/introducing-verifiable-execution-in-dapr-1-18/>
