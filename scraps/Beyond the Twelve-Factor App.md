#[[Software Design]] #[[Cloud Native]]

[[The Twelve-Factor App]]を現代のクラウドネイティブ環境向けに拡張した方法論。Kevin Hoffmanによって著され、オリジナルの12要因を15要因に拡張している。

## 追加された3つの新要因

**2. API First** - サービス設計において、実装前にAPIインターフェースを定義し契約駆動開発を促進 [[API Architecture]]

**14. Telemetry** - メトリクス、ログ、トレースの収集を通じた包括的な監視機能 [[Observability]]

**15. Authentication and Authorization** - 認証・認可をアプリケーション設計の第一級の関心事として組み込む [[Authentication]] [[Authorization]]

## 既存要因の改訂

[[Kubernetes]] ConfigMap/Secretsなどコンテナ時代の設定管理や、[[Infrastructure as Code]]（IaC）による環境構築など、現代的なベストプラクティスを反映した注釈が追加されている。

<https://www.vmware.com/docs/ebook-beyond-the-12-factor-app>
