[[mise/Bootstrap]] の1フェーズで、`[bootstrap.packages]` に宣言した OS パッケージをネイティブの package manager（apk / apt / brew 等）で導入する

- ledger で mise が入れたパッケージを追跡し、`mise bootstrap packages apply`（導入）/ `import`（既存環境から取り込み）/ `prune`（宣言から外れたものを削除）を提供、snapshot も持つ
- Homebrew では `[bootstrap.brew.taps]` で tap を管理し、bottle が無ければ source build。app bundle 直接導入用の `brew-cask:` backend も追加された

<https://mise.jdx.dev/bootstrap.html>
