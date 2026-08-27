# AGENTS.md

このリポジトリで作業する際のローカルガイダンス（Codex 向け）。Claude Code 等の他エージェントと共有する内容は [CLAUDE.md](CLAUDE.md) と同期する。

## リポジトリ

- **Scraps**（Rust製の静的サイトジェネレーター）で構築する個人ウィキ。利用方法は公式文書: <https://boykush.github.io/scraps/>
- `/scraps/` がウィキの基準ディレクトリ（`.scraps.toml` とMarkdownを配置）、`/scraps/_site/` は生成結果のためGitの管理対象外
- RSSの記事一覧・本文取得は `mise run fetch-rss` / `mise run fetch-article-body` を手動で使う
- `Dockerfile` は remote MCP サーバーの image 用（末尾の節）

## 開発コマンド

[mise](https://mise.jdx.dev/) でツール／タスクを管理する。タスク一覧は `mise tasks`、未登録の Scraps コマンドは `mise exec -- scraps ...` で実行（`SCRAPS_DIRECTORY=scraps` 設定済みのため `-C` は不要）。

## Wikiの参照

`/scraps/` 配下を読む際は `grep` / `find` / `cat` / `head` を**使わず**、必ず `scraps` のコマンド経由で照会する（ウィキリンク、タグ、被リンクを構造化データとして扱え、`--json` で文脈も節約できるため）。コマンド一覧は公式文書 <https://boykush.github.io/scraps/> を参照。配置先で曖昧性が出る場合は `--ctx <ctx>` で絞り込む。

例外: 対象が既に特定できており機械的な一括編集を行う場合のみ Read / Edit / Write を直接使ってよい。**「どこかにある何か」を探す grep は禁止** — `scraps search` を使う。

## AIによる操作

- 新しいページの作成には [.claude/skills/ingest/SKILL.md](.claude/skills/ingest/SKILL.md) を使う。Claude Code以外のエージェントは同ファイルを直接読んで従う。
- 記事・登壇資料のURLからページを作るときは [.claude/skills/digest/SKILL.md](.claude/skills/digest/SKILL.md) を使う。対話なしで1件書き切り、既存ページは変更しない。
- その他のウィキ操作は通常のリポジトリ作業として扱い、存在しない上位の設計、振り分け役、スキルを仮定しない。
- AI向け文書では、固有名詞、コマンド名、実際のフィールド名を除き、英単語を使わず日本語で書く。

## remote MCP サーバーの image

ウィキを scraps の remote MCP サーバーとして動かすための image。このリポジトリの責務は **image のビルドと公開まで**で、Kubernetes の manifest は置かない。

- `Dockerfile` — scraps の musl リリースバイナリと `scraps/` のコンテンツを distroless static に載せる。build context はリポジトリ直下で、`.dockerignore` は `scraps/` だけを通す許可リスト（`_site` は除外）。
- image が受け取る引数は listen アドレスだけで、既定は `0.0.0.0:1113`。`mcp serve --http` までが ENTRYPOINT なので、ポートを変える側は `0.0.0.0:<port>` を渡す。distroless に shell が無いため環境変数からは展開できない。
- 同梱する scraps の version は workflow が `mise.toml` の pin から読む。**version を上げる場所は `mise.toml` だけ**で、Renovate が上げれば image も再ビルドされる。
- image は `ghcr.io/boykush/wiki-mcp-server`。push する tag は `<scraps の version>-<commit>`（不変）と `main`（可変）の2つ。**tag の付け方は image を追う側の更新戦略と対になっている**ので、変えるときは追う側も揃える。
- コンテンツは image に焼き込むので、ウィキの更新が MCP サーバーに届くのは新しい image を取り込んだとき。ローカルの `scraps mcp serve` のように即時ではない。
- MCP サーバーは認証も TLS も持たない（scraps の公式文書も loopback 前提と書いている）。露出させるなら前段に認証を置く。
- GHCR の package は初回 push で private になる。private のままだと pull できないので visibility を public にする。
