#[[Network]] 

![](https://www.envoyproxy.io/docs/envoy/latest/_static/envoy-logo.png)

Lyftエンジニアリングチームから生まれたサービスプロキシ、[[OSI参照モデル]]のレイヤ7（アプリケーション）を扱う高レベルな機能を提供する

Envoyは以下のような信念から生まれており、レイヤ4（ネットワーク）とL7（アプリケーション）を跨ぐ透過的なアプリケーションを目指す。


> The network should be transparent to applications. When network and application problems do occur it should be easy to determine the source of the problem.

[[HTTP]]に加え[[gRPC]]もサポートしており、言語やツールが多様化した複数アプリケーションに対応できる。

[[ロードバランシング]]機能や、[[APIゲートウェイ]]や[[サービスメッシュ]]に求められるような[[リトライ]]、[[サーキットブレーカー]]、グローバル[[レートリミット]]等の機能も備えておりいくつかの[[Cloud Native]]プロジェクトからも依存されている

[[CNCF]] graduated project

---

- [Envoy documentation](https://www.envoyproxy.io/docs/envoy/latest/)