![](https://testcontainers.com/images/testcontainers-logo.svg)

#[[Data Store]] #[[Testing]]

アプリケーションが依存する[[リレーショナルデータベース|RDB]]、KVS、[[メッセージキュー]]といったようなコンポーネントに対し、テスト時にテストコード上で[[コンテナ]]に対応したインスタンス変数を定義し、コンテナ実行することができるオープンソースライブラリ

[[Docker]]イメージをベースにコンテナを生成する

[[Java]]、[[Go]]、[[Rust]]といったいくつかの言語向けにライブラリが用意されており、Javaでの最小の利用イメージは以下

```java
GenericContainer redis = new GenericContainer("redis:5.0.3-alpine")
    .withExposedPorts(6379);
```

---

<https://testcontainers.com/?language=java>