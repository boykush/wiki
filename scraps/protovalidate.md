#[[API Architecture]]

[[Buf]]が提供する[[Protocol Buffers]]向けのセマンティックバリデーションライブラリ。`.proto`ファイル上のアノテーションでフィールド制約を表現し、`protoc-gen-validate`の次世代として位置付けられている。

- 標準アノテーション (`uuid = true` / `email = true` / `max_len = 64` 等) で一般的な制約を宣言
- カスタムルールはCEL (Common Expression Language) で記述
- サポート言語: Go / TypeScript / Java / Python / C++

---

<https://buf.build/docs/protovalidate/>
