#[[Programming]]

[[Apache/Pekko]]のコアモジュール。[[Java]]/[[Scala]]でアクターモデルに基づく並行・分散処理の基盤を提供する

- アクターは状態・振る舞い・メールボックスをカプセル化し、メッセージパッシングで通信する
- Typed APIにより受信可能なメッセージ型を型システムで強制できる
- アクターはツリー状の階層構造を形成し、親アクターが子アクターを監督する

<https://pekko.apache.org/docs/pekko/current/typed/actors.html>
