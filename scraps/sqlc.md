#[[Programming]]

SQLを書くと型安全な[[Go]]コードを自動生成するツール

```sql
-- name: ListUsersByAge :many
SELECT id, name FROM users WHERE age >= $1 ORDER BY id;
```

```go
users, err := q.ListUsersByAge(ctx, 20)
```

<https://github.com/sqlc-dev/sqlc>
