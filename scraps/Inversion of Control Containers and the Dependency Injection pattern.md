#[[Blog]] #[[Software Design]]

[[Martin Fowler]]による[[Dependency Injection]]の概念を定義した記念碑的な記事（2004年1月23日公開）

### 背景

それまで軽量コンテナフレームワークは「Inversion of Control（IoC）」という用語で説明されていたが、Fowlerは「IoCはフレームワークの一般的な特性であり包括的すぎて混乱を招く」と指摘。IoC推進者との議論を経て、より具体的な「Dependency Injection」という用語を作成した

### 主な内容

**DIの定義**：別のオブジェクト（アセンブラ）が、クラスのフィールドに適切な実装を注入するアプローチ。サービス構成の責任と使用の責任を分離する

**3つの実装パターン**：

- **Constructor Injection**（コンストラクタ注入）：PicoContainerで採用。オブジェクト生成時に依存関係を明示
- **Setter Injection**（セッター注入）：Spring Frameworkで採用。初期化後に依存関係を設定
- **Interface Injection**（インターフェース注入）：Avalonで使用。注入用インターフェースを実装

### 影響

この記事により「Dependency Injection」という用語が確立され、以降のフレームワーク設計やソフトウェアアーキテクチャに大きな影響を与えた。Spring Frameworkも当初は「IoC」を使用していたが、後に「DI」という用語を採用

<https://martinfowler.com/articles/injection.html>

日本語訳：<https://kakutani.com/trans/fowler/injection.html>
