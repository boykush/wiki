## Software Catalog

[[Backstage]]の中核 plugin。エコシステム内の全ソフトウェアの所有権とメタデータを一元管理し、横断的に discoverable にする

エンティティはコードと同居する descriptor file（`catalog-info.yaml`）で定義され、収集・可視化される。主な種別:

- **Component**: ソフトの単位（サービス、ウェブサイト、バックエンド、データパイプライン等）
- **API**: component 間の境界
- **Resource**: component が実行時に必要とするインフラ（DB, S3, CDN 等）
- **System**: resource と component の集合で、1つ以上の public API を公開する
- **Domain**: 用語・ドメインモデル・ビジネス目的を共有する system の集合
- **User / Group**: 組織エンティティ（個人 / チーム）

<https://backstage.io/docs/features/software-catalog/>
