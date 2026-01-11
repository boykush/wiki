#[[Security]] #[[OWASP]]

[[DoS攻撃]]の防御戦略をまとめた[[OWASP]] Cheat Sheet Series

OSIモデルに基づくCERT-EU分類を採用し、3つの攻撃層に分類している

- Application層：サーバリソースの枯渇またはアプリケーション機能の無効化（Slow HTTP攻撃など）
- Session/Protocol層：サーバやファイアウォール、ロードバランサーなどのリソース消費
- Network/Volumetric層：ネットワーク帯域幅の飽和

主な防御戦略

- 単一障害点（SPOF）の排除と冗長性確保
- グレースフルデグラデーション（部分的機能継続）の実装
- 入力検証（ファイルサイズ、リクエストサイズの上限設定）
- セッションタイムアウトの適切な設定
- [[レートリミット]]（最小入信データレート、接続タイムアウト、帯域幅上限）
- ISPレベルでのIP偽装フィルタリング
- CPU集約的操作の回避
- 例外処理の適切な実装
- 静的リソースの別ドメイン配置

<https://cheatsheetseries.owasp.org/cheatsheets/Denial_of_Service_Cheat_Sheet.html>
