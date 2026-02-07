#[[Security]] #[[Cloud Native]]

Anchoreが開発したSBOM（Software Bill of Materials）生成のためのCLIツール・ライブラリ

コンテナイメージやファイルシステムから依存関係を解析し、SPDX、CycloneDX、JSON形式でSBOMを出力できる

主な特徴:

- コンテナイメージ、OCIレジストリ、ディレクトリ、ファイル、アーカイブをスキャン可能
- ファイルレベルまでの可視性を提供
- 直接・推移的な依存関係を検出
- CI/CDパイプラインへの統合が容易
- [[Grype]]と組み合わせて脆弱性スキャンに利用可能

CISAにも認定されており、ソフトウェアサプライチェーンの可視性確保やコンプライアンス対応に利用される

<https://github.com/anchore/syft>
