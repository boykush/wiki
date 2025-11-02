#[[Programming]]

[[Go]]言語のアプリケーション設定ライブラリ

構造体フィールドに環境変数とのマッピングを記述できる

```go
type config struct {
  Home string `env:"HOME"`
}

// parse
var cfg config
err := env.Parse(&cfg)

// parse with generics
cfg, err := env.ParseAs[config]()
```

<https://github.com/caarlos0/env>