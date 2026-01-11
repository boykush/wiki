#[[Security]] #[[Authentication]] #[[Blog]]

[[ブルートフォース攻撃]]を防ぐための対策をまとめた[[OWASP]] Communityの記事

主な対策方法

- [[アカウントロックアウト]]機能（[[DoS攻撃]]に悪用されるリスクに注意）
- [[Device Cookies]]（デバイスごとの認証ロック機構、[[DoS攻撃]]に対して耐性がある）
- パスワード検証時の遅延追加
- IPアドレスベースの[[レートリミット]]
- [[CAPTCHA]]の導入
- 複数の秘密の質問による認証強化

単一の技術では回避されやすいため、複数の対策を組み合わせることが重要

<https://owasp.org/www-community/controls/Blocking_Brute_Force_Attacks>
