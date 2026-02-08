#[[Security]] #[[Cloud Native]]

AnchorがスポンサーするSBOM生成のためのCLIツール兼[[Go]]ライブラリ

[[コンテナ]]イメージ、ファイルシステム、アーカイブからSoftware Bill of Materials（SBOM）を生成する

主な特徴:

- 多数のパッケージエコシステムに対応（Alpine apk、Debian dpkg、RPM、[[Go]]、[[Python]]、Java、JavaScript、Ruby、[[Rust]]、PHP等）
- SPDX、CycloneDXなどの主要なSBOMフォーマットをサポート
- [[CI/CD]]パイプラインへの統合が容易
- Grypeと連携した脆弱性スキャンが可能
- Apache-2.0ライセンスのOSS

基本的な使用例:

```bash
# コンテナイメージからSBOM生成
syft <image>

# ファイルシステムからSBOM生成
syft dir:<path>

# SPDX形式で出力
syft <image> -o spdx-json
```

<https://github.com/anchore/syft>
