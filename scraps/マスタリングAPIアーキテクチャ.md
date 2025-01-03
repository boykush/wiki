## モノシリックからマイクロサービスへとアーキテクチャを進化させるための実践的手法

#[[Book]] #James Gough #Daniel Bryant #Matthew Auburn
#[[API Architecture]] #[[Testing]] #[[Reliability]] #[[Observability]] #[[Security]] #[[Software Design]]

![](https://m.media-amazon.com/images/I/41vC+fyZq6L._SX342_SY445_.jpg)

[O'Reilly Japan - マスタリングAPIアーキテクチャ](https://www.oreilly.co.jp/books/9784814400898/)

## キーワード

### イントロダクション
- [[C4 model]]
- [[ADR]] 
### 1章 APIの設計・構築・仕様化
- [[HTTP]]/[[REST]]/[[リチャードソン成熟度モデル]]
- [[GraphQL]]
- [[RPC]]/[[gRPC]]
- [[Open API]]
### 2章 APIのテスト 
- [[アジャイルテストの4象限]]
- [[テストピラミッド]]
- [[コントラクトテスト]]
- [[E2Eテスト]]
### 3章 APIゲートウェイ：外部トラフィック管理
- [[リバースプロキシ]]/[[ロードバランサー]]
- [[APIゲートウェイ]]/[[Envoy]]/[[Ambassador Edge Stack]]
### 4章 サービスメッシュ：サービス間トラフィック管理
- [[サービスメッシュ]]/[[サイドカープロキシ]]/[[Istio]]
- [[分散コンピューティングの8つの誤謬]]
- [[サーキットブレーカー]]/[[リトライ]]/タイムアウト/バルクヘッド/フォールバック
### 5章 APIの展開とリリース
- [[カナリアリリース]]/[[ブルーグリーン戦略]]/[[Argo Rollouts]]
- [[OpenTelemetry]]
### 6章 セキュリティ運用：脅威モデリング
- [[OWASP Top Ten]]
- [[脅威モデリング]]/[[Microsoft Threat Modeling Tool]]/[[STRIDE]]
- [[レートリミット]]
### 7章 APIの認証と認可
- [[OAuth2]]/[[OIDC]]
- SAML
### 8章 API駆動アーキテクチャへのアプリケーションの再設計
- [[DDD]]/[[マイクロサービス]]
- [[適応度関数]]
- [[ストラングラーフィグアプリケーション]]
### 9章 クラウド環境への移行
- 6つのR
- ゼロトラストアーキテクチャ