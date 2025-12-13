#[[Go]] #[[Dependency Injection]]

[[Go]]言語のDependency Injection（依存性注入）ツールキット

Go 1.18+のジェネリクス機能を基盤とした型安全なAPIを提供するDIライブラリ。uber/digの代替として開発された

DIライブラリとしての特徴：

- **ジェネリクスによる型安全性**: `do.MustInvoke[*Engine](i)` のように型パラメータを指定してサービスを取得。コンパイル時に型チェックが行われる
- **柔軟なサービス登録**: `do.Provide()`、`do.ProvideNamed()`、`do.ProvideValue()` による個別登録、または `do.Package()` によるパッケージ単位の一括登録
- **ローディング戦略**: Eager、Lazy、Transientの3種類のローディング方式をサポート
- **ライフサイクル管理**: ヘルスチェック、グレースフルシャットダウン、依存関係を考慮した並列シャットダウン
- **循環依存検出**: 依存関係の循環を自動検出
- **デバッグ機能**: Web UIとHTTPミドルウェアによる依存グラフの可視化

コード生成不要で軽量な設計

<https://github.com/samber/do>
