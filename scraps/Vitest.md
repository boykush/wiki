#[[Testing]]

[[JavaScript]] / [[TypeScript]] 向けの Vite ベースの test runner。Jest 互換 API、ESM ネイティブ実行、Vite の transform / HMR を活用した高速 watch を特徴とする。

- `vitest` で watch モード、`vitest run` で単発実行
- UI Mode (`--ui`) / Browser Mode は localhost で HTTP + WebSocket API server を起動し、テストの再実行制御や結果表示を行う

<https://vitest.dev/>
