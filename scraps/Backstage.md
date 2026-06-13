[[Platform Engineering]]

Spotify社が開発する[[Internal Developer Portal]]。[[CNCF]] incubating project

core（フレームワーク）と plugin から成り、App 本体は各要素を配線するだけで、機能は plugin が提供する

- Software Catalog / Software Templates / TechDocs / Search 等の中核機能も built-in plugin として実装される
- plugin は frontend（ブラウザの React）と backend（Node.js）の2層に分かれ、各 backend plugin は独立して動作する

<https://backstage.io/>
<https://github.com/backstage/backstage>
