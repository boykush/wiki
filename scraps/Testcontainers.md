![](https://testcontainers.com/images/testcontainers-logo.svg)

#[[Database]] #[[Testing]]

アプリケーションが依存するRDB、KVS、[[メッセージキュー]]といったようなコンポーネントに対し、テスト時にテストコード上で[[コンテナ]]に対応したインスタンス変数を定義し、コンテナ実行することができるオープンソースライブラリ

[[Docker]]イメージをベースにコンテナを生成する

Java、Go、Rustといったいくつかの言語向けにライブラリが用意されており、Javaでの最小の利用イメージは以下

```java
GenericContainer redis = new GenericContainer("redis:5.0.3-alpine")
    .withExposedPorts(6379);
```

---

- [Testcontainers](https://testcontainers.com/?language=java)