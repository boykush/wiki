# AGENTS.md

このリポジトリで作業する際のローカルガイダンス（Codex 向け）。Claude Code 等の他エージェントと共有する内容は [CLAUDE.md](CLAUDE.md) と同期する。

## LLM Wiki schema

LLM Wiki schema（Andrej Karpathy の [LLM Wiki](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f) を Scraps 向けに grounding したもの）は**このリポジトリがローカルに所有する**。公式 plugin `scraps@scraps-claude-code-plugins` (0.1.7) からの fork で、plugin には CI 含め依存しない。構成:

- [ingest skill](.claude/skills/ingest/SKILL.md) — 対話ファーストの取り込み
- [query skill](.claude/skills/query/SKILL.md) — `[[Title]]` 引用付きの検索・合成
- [scraps-llm-wiki-schema agent](.claude/agents/scraps-llm-wiki-schema.md) — 意図ルーティング・対話レイヤー・公式 Doc ベースのツール解説
- [lint-rule-handler agent](.claude/agents/lint-rule-handler.md) — purpose-driven な lint 運用

Claude Code 以外のエージェントは各定義ファイルを直接読んで従う。このファイルは schema 本体に対する**リポジトリ固有の運用規約**を記述する。

## アーキテクチャ

- **Scraps**（Rust 製の静的サイトジェネレーター）で構築する個人ウィキ。利用方法は公式 Doc: <https://boykush.github.io/scraps/>
- `/scraps/` が wiki root（`.scraps.toml` と Markdown を配置）、`/scraps/_site/` はビルド出力で gitignore
- Raw source の intake はローカル `/ingest`（対話）のみ。RSS の記事一覧・本文取得は `mise run fetch-rss` / `mise run fetch-article-body` を手動で使う

## 開発コマンド

[mise](https://mise.jdx.dev/) でツール／タスクを管理する。タスク一覧は `mise tasks`、未登録の Scraps コマンドは `mise exec -- scraps ...` で実行（`SCRAPS_DIRECTORY=scraps` 設定済みのため `-C` は不要）。

## scraps ファイル参照ルール

`/scraps/` 配下を読む際は `grep` / `find` / `cat` / `head` を**使わず**、必ず `scraps` CLI 経由でクエリする（wiki-link / tag / backlink を構造化データとして扱え、`--json` でコンテキストも節約できるため）。コマンド一覧は公式 Doc <https://boykush.github.io/scraps/> を参照。ctx で曖昧性が出る場合は `--ctx <ctx>` で絞り込む。

例外: 対象が既に特定できており機械的な一括編集を行う場合のみ Read / Edit / Write を直接使ってよい。**「どこかにある何か」を探す grep は禁止** — `scraps search` を使う。

## Ingest フロー（ローカル運用）

ingest 作業はリポジトリローカルの [.claude/skills/ingest/SKILL.md](.claude/skills/ingest/SKILL.md) のフローに従う（Claude Code では `/ingest` として呼び出せる。他エージェントは同ファイルを読んで手動で従う。upstream の one-shot 設計が対話ファースト運用と合わないため fork）。要点: 対話で理解を確定してから書き出す二段階、本文は接続メインのアンカー構成、仕様詳細の転記禁止。

## Scrap 記述のローカル規約

- **必ず `/ingest` skill 経由で作成**し、上記 Ingest フローに従う。`/query` での確認や `scraps-llm-wiki-schema` agent での議論（catch-up・取り込み前の検討）から入る流れも可
- **リンク／相互リンクの規律は ingest skill に委譲**: 向き（具体→抽象の片方向）・既存言及のみのリンク化・関連の捏造禁止は ingest skill の cross-link step が定義する。ここでは再記述しない
- **概念 scrap は "それが何か" に絞る**: use case 列挙（「X 対策にも、Y 管理にも、Z にも使える」）は anti-pattern。具体側からの backlink に任せる
- **検証済み事実のみ記述**: 製品カテゴリ自称や他製品との比較は公式 source で明示確認できた範囲のみ。「ソースに書かれていない」は「そうではない」の根拠にならない (absence ≠ negative fact)
- **タグにエイリアス不可**: v1 のタグは discriminator。`#[[Tag|alias]]` 形式は scrap link 専用
- **本文構成**: 略語があれば冒頭 h2 (`## XYZ`)、続いてタグ行 (`#[[A]] #[[B]]`)、本文（概要 1–2 文＋箇条書き、関連は wiki-link、外部 URL は autolink）。詳細形式と例は公式 Doc 参照
