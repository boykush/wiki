## RSC

#[[Programming]]

[[React]] 19で安定版となったサーバー上で実行されるコンポーネントアーキテクチャ

主な特徴:

- サーバーでレンダリングされ、クライアントにJavaScriptを送信しない
- RSC Payloadとしてシリアライズされた形式でクライアントに送信
- `<Suspense>`境界によるストリーミングレンダリングをサポート
- クライアントコンポーネントは`"use client"`ディレクティブで宣言

<https://react.dev/reference/rsc/server-components>
