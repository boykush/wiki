#[[Security]] #[[Authentication]]

[[ブルートフォース攻撃]]を軽減するための認証ロック機構。ユーザーが正常に認証された後、そのブラウザに発行される特別な[[Cookie]]

従来の[[アカウントロックアウト]]と比較して以下の利点がある

- [[DoS攻撃]]に対して耐性がある
- IPアドレスではなくブラウザ[[Cookie]]を基準とするため予測可能で実装しやすい
- ボットネットや代理経由の攻撃に対応しやすい

認証リクエスト時に有効なDevice Cookieの有無を確認し、未信頼クライアント（Device Cookieなし）からの認証試行回数を記録してロックアウトを実施する

実装には[[JWT]]、[[Redis]]/Memcachedによるロックリスト管理、[[HMAC]]署名による改ざん防止などが用いられる

<https://owasp.org/www-community/Slow_Down_Online_Guessing_Attacks_with_Device_Cookies>
