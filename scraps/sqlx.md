#[[Programming]]

[[Go]]の`database/sql`を拡張し、クエリ結果を構造体に詰め替えるライブラリ。2024年5月を最後に更新が止まっている

```go
var users []User
err := db.Select(&users, "SELECT id, name FROM users WHERE age >= $1", 20)
```

<https://github.com/jmoiron/sqlx>
