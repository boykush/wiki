# CLAUDE.md

このリポジトリで作業する際のローカルガイダンス。Codex 等の他エージェントと共有する内容は [AGENTS.md](AGENTS.md) と同期する。

## LLM Wiki schema

Scraps の **default LLM Wiki schema** は `scraps:scraps-llm-wiki-schema` agent が提供する。Andrej Karpathy の [LLM Wiki](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f) を Scraps 向けに grounding し、`/ingest` / `/query` / `scraps:lint-rule-handler` への意図ルーティング、対話レイヤー（catch-up・取り込み前の検討）、公式 Doc ベースのツール解説を担う。このファイルは default schema への **ローカル拡張**としてリポジトリ固有の運用規約のみを記述する。

## アーキテクチャ

- **Scraps**（Rust 製の静的サイトジェネレーター）で構築する個人ウィキ。利用方法は公式 Doc: <https://boykush.github.io/scraps/>
- `/scraps/` が wiki root（`.scraps.toml` と Markdown を配置）、`/scraps/_site/` はビルド出力で gitignore
- Raw source の intake は GitHub Issue / RSS / ローカル `/ingest` の 3 経路（[create-scrap-from-issue.yml](.github/workflows/create-scrap-from-issue.yml) / [rss-to-scrap.yml](.github/workflows/rss-to-scrap.yml)）

## ワークフロー

- **ローカル作業は `main` 上で行う**: ローカル環境では新しいブランチを切らず、`main` 上で直接コミット・push する
- ※ GitHub Actions などリモート実行時は別ブランチ＋PR 運用となるため対象外

## 開発コマンド

[mise](https://mise.jdx.dev/) でツール／タスクを管理する。タスク一覧は `mise tasks`、未登録の Scraps コマンドは `mise exec -- scraps ...` で実行（`SCRAPS_DIRECTORY=scraps` 設定済みのため `-C` は不要）。

## scraps ファイル参照ルール

`/scraps/` 配下を読む際は `grep` / `find` / `cat` / `head` を**使わず**、必ず `scraps` CLI 経由でクエリする（wiki-link / tag / backlink を構造化データとして扱え、`--json` でコンテキストも節約できるため）。コマンド一覧は公式 Doc <https://boykush.github.io/scraps/> を参照。ctx で曖昧性が出る場合は `--ctx <ctx>` で絞り込む。

例外: 対象が既に特定できており機械的な一括編集を行う場合のみ Read / Edit / Write を直接使ってよい。**「どこかにある何か」を探す grep は禁止** — `scraps search` を使う。

## Scrap 記述のローカル規約

- **必ず `/ingest` skill 経由で作成**。`/query` での確認や `scraps:scraps-llm-wiki-schema` agent での議論（catch-up・取り込み前の検討）を挟んでから ingest する流れも可
- **リンク／相互リンクの規律は default schema に委譲**: 向き（具体→抽象の片方向）・既存言及のみのリンク化・関連の捏造禁止は `/ingest` の cross-link step が定義する。ローカルでは再記述しない
- **概念 scrap は "それが何か" に絞る**: use case 列挙（「X 対策にも、Y 管理にも、Z にも使える」）は anti-pattern。具体側からの backlink に任せる
- **検証済み事実のみ記述**: 製品カテゴリ自称や他製品との比較は公式 source で明示確認できた範囲のみ。「ソースに書かれていない」は「そうではない」の根拠にならない (absence ≠ negative fact)
- **タグにエイリアス不可**: v1 のタグは discriminator。`#[[Tag|alias]]` 形式は scrap link 専用
- **本文構成**: 略語があれば冒頭 h2 (`## XYZ`)、続いてタグ行 (`#[[A]] #[[B]]`)、本文（概要 1–2 文＋箇条書き、関連は wiki-link、外部 URL は autolink）。詳細形式と例は公式 Doc 参照
