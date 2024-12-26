## モノシリックからマイクロサービスへとアーキテクチャを進化させるための実践的手法

#[[Book]] #[[API Architecture]] #[[Testing]] #[[Reliability]] #[[Observability]] #[[マイクロサービス]] #[[Security]]

![](https://m.media-amazon.com/images/I/41vC+fyZq6L._SX342_SY445_.jpg)

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
- レートリミット