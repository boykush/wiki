# AGENTS.md

このリポジトリで作業する際のローカルガイダンス（Codex 向け）。Claude Code 等の他エージェントと共有する内容は [CLAUDE.md](CLAUDE.md) と同期する。

## リポジトリ

- **Scraps**（Rust製の静的サイトジェネレーター）で構築する個人ウィキ。利用方法は公式文書: <https://boykush.github.io/scraps/>
- `/scraps/` がウィキの基準ディレクトリ（`.scraps.toml` とMarkdownを配置）、`/scraps/_site/` は生成結果のためGitの管理対象外
- RSSの記事一覧・本文取得は `mise run fetch-rss` / `mise run fetch-article-body` を手動で使う

## 開発コマンド

[mise](https://mise.jdx.dev/) でツール／タスクを管理する。タスク一覧は `mise tasks`、未登録の Scraps コマンドは `mise exec -- scraps ...` で実行（`SCRAPS_DIRECTORY=scraps` 設定済みのため `-C` は不要）。

## Wikiの参照

`/scraps/` 配下を読む際は `grep` / `find` / `cat` / `head` を**使わず**、必ず `scraps` のコマンド経由で照会する（ウィキリンク、タグ、被リンクを構造化データとして扱え、`--json` で文脈も節約できるため）。コマンド一覧は公式文書 <https://boykush.github.io/scraps/> を参照。配置先で曖昧性が出る場合は `--ctx <ctx>` で絞り込む。

例外: 対象が既に特定できており機械的な一括編集を行う場合のみ Read / Edit / Write を直接使ってよい。**「どこかにある何か」を探す grep は禁止** — `scraps search` を使う。

## AIによる操作

- 新しいページの作成には [.claude/skills/ingest/SKILL.md](.claude/skills/ingest/SKILL.md) を使う。Claude Code以外のエージェントは同ファイルを直接読んで従う。
- その他のウィキ操作は通常のリポジトリ作業として扱い、存在しない上位の設計、振り分け役、スキルを仮定しない。
- AI向け文書では、固有名詞、コマンド名、実際のフィールド名を除き、英単語を使わず日本語で書く。
