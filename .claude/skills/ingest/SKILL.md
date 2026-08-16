---
name: ingest
description: 対話を経てから書き出す二段階 ingest。source（prompt / URL / term）の要点と既存 scrap への接続をユーザーと確定した後、アンカー構成の scrap を作成し cross-link と sanity check を行う。このリポジトリの正規 ingest 経路（CI からは --headless で呼ばれる）。
allowed-tools: Read, Write, Edit, Bash, WebFetch, WebSearch, Glob, Grep
user-invocable: true
argument-hint: [--headless] [source]
---

# Ingest（対話ファースト）

新しい scrap を wiki に追加し、既存グラフへ統合する。scraps 公式 plugin の ingest を fork したローカル skill。

原則: ユーザーが「知っている」ものは既存 scrap そのもの。新規 scrap の価値は説明の分量ではなく既存知識への接続にある。md を書くのは AI だが、理解はユーザーの側で生成される — AI は bookkeeper（記録係）であり、ghostwriter（代筆者）に滑らないことをこの skill が保証する。

## 全体フロー

Phase 1（対話）→ Phase 2（書き出し）の二段階。一回の応答で md 生成まで進めない。ユーザーが明示的に対話省略を指示した場合のみ Phase 1 の確認を省略できる。

`--headless`（CI の Issue / RSS intake 用）: 対話相手がいないため Phase 1 の提示・確認を行わず、現状調査 → 書き出し → cross-link → sanity check を一括実行する。アンカー構成・転記禁止・リンク規律は対話モードと同一で、対話による確立がない分、本文は保守的に短くする。呼び出し prompt に追加のローカル規約があればそれに従う。

## Source types

| Source | 提供のされ方 | 扱い |
| --- | --- | --- |
| prompt | トピック・指示・完成済みコンテンツ（`/query` の合成結果など） | 完成済みコンテンツなら Phase 1 は確認のみ。トピックなら通常フロー |
| URL | 貼られたリンク | `WebFetch` で取得し、OGP / 見出しからタイトル案を得る |
| term | 議論中に浮上した用語 | 直前の議論が Phase 1 を兼ねる。位置づけの確認だけ行い書き出しへ |

## Phase 1 — 対話（理解の確定）

1. **wiki の現状調査**
   - `scraps search "<keyword>" --json` で関連 scrap を探す
   - `scraps tag list --json` でタグを確認する
   - 関連上位 3–8 件を `scraps get "<title>" --json` で読む（outline だけでよければ fields に `headings`）
2. **接続案の提示** — md を書かずに、会話で以下を提示する:
   - それが何か（1–2 文の gist）
   - タイトル案と ctx（既存タイトルと衝突する場合のみ ctx を付け、深さ ≤ 3）
   - 既存 scrap への接続案: どの `[[scrap]]` にどの向きで繋がるか
   - タグ案（既存タグ一覧にあるものだけ）
3. **ユーザーの言語化を待つ** — 確認・修正・位置づけの言い直しを受けてから Phase 2 へ進む。応答なしに書き出さない

## Phase 2 — 書き出し（アンカー生成）

対話で確立した内容**だけ**を md にする。対話に現れなかった文を書かない。

- **アンカー構成**: 略語があれば冒頭 h2（`## XYZ`）→ タグ行（`#[[A]] #[[B]]`）→「それが何か」1–2 文 → 接続を担う箇条書き（`[[link]]` を含む）→ source autolink（`<https://...>`）
- **転記禁止**: 仕様詳細（オプション列挙・構文・SLA・比較表・手順）は書かない。詳細は URL を開く方が常に新しい
- **familiarity はリンクに使う**: 関連 scrap が多いほどリンクを厚くする。説明行数は増やさない。本文の目安は 5–7 行
- **リンクとタグの規律**（公式 skill から継承）:
  - scrap を指すときは常に `[[Title]]`。`#[[Tag]]` は既存タグ一覧にある横断カテゴリ専用。迷ったらリンク
  - リンクの向きは具体→抽象の片方向。抽象 scrap から具体 scrap へのリンクは anti-pattern（具体側からの backlink に任せる）

## Cross-link（既存 scrap からの inbound リンク化）

- タイトル確定後、`Grep` で literal title を `*.md` 横断検索する（`scraps search` は fuzzy で位置も返さないため discovery には使わない）
- 各ヒットを文脈で判定し、standalone な言及のみ `[[新タイトル]]` に変換する（`[[新タイトル|表層形]]` で活用形に対応）。長い複合語の一部は対象外 — 日本語は語境界がないため文脈判定必須
- `[[...]]` / `#[[...]]` 内と新 scrap 自身の file は skip。Grep が見つけていない言及を捏造しない
- 生き残った**全て**の scrap を変換する。backlink は自動計算されるため逆リンクは書かない

## Sanity check

- **タグ検査**: 書いた `#[[tag]]` が Phase 1 で取得したタグ一覧に存在するか。無いものは `[[link]]` の書き間違いとして変換する（新カテゴリの意図的な新設のみ例外）
- `scraps lint --rule broken-link`
- 非自明な違反は `lint-rule-handler` agent へ引き継ぐ

## CLI

- `scraps search <query> --json` / `scraps get <title> [--ctx <ctx>] --json` / `scraps tag list --json` / `scraps lint --rule <rule>`
- `--json` は構造化出力のため必須（人間向け出力は parse が不安定）
