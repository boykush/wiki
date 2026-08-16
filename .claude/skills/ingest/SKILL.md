---
name: ingest
description: 対話を経てから書き出す二段階 ingest。source（prompt / URL / term）の要点と既存 scrap への接続をユーザーと確定した後、アンカー構成の scrap を作成し cross-link と sanity check を行う。このリポジトリの正規 ingest 経路。
allowed-tools: Read, Write, Edit, Bash, WebFetch, WebSearch, AskUserQuestion
user-invocable: true
argument-hint: [source]
---

# Ingest（対話ファースト）

新しい scrap を wiki に追加し、既存グラフへ統合する。scraps 公式 plugin の ingest を fork したローカル skill。

原則: ユーザーが「知っている」ものは既存 scrap そのもの。新規 scrap の価値は説明の分量ではなく既存知識への接続にある。md を書くのは AI だが、理解はユーザーの側で生成される — AI は bookkeeper（記録係）であり、ghostwriter（代筆者）に滑らないことをこの skill が保証する。

## 全体フロー

Phase 1（対話）→ Phase 2（書き出し）の二段階。一回の応答で md 生成まで進めない。ユーザーが明示的に対話省略を指示した場合のみ Phase 1 の確認を省略できる。

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

リンク化するかの最終判定はユーザーが行う。AI は候補を集めて見立てを添えるところまで。

1. **候補収集** — タイトル確定後、`scraps search "<新タイトル>" --json` で言及していそうな scrap を挙げ、各候補を `scraps get "<title>" [--ctx <ctx>] --json body` で読んで literal な言及箇所を特定する。search は fuzzy なので無関係なヒットが混ざる。body に literal な言及が無い候補、既に `[[...]]` / `#[[...]]` になっている箇所、新 scrap 自身は機械的に除外する。body で読んでいない言及を候補に足さない
2. **ユーザー判定** — 残った候補を `AskUserQuestion`（`multiSelect: true`）に並べる
   - label は scrap のタイトル（同一 scrap 内に複数箇所あれば区別が付く語を足す）、description に言及を含む一文と AI の見立て（standalone な言及か、長い複合語の一部か）を書く
   - 日本語は語境界がないためこの切り分けこそユーザーに渡す。AI が先に落とすのは 1 の機械的除外だけ
   - 1 回の呼び出しは 4 問 × 4 option が上限。超える分は次の `AskUserQuestion` に回し、勝手に打ち切らない
3. **変換** — 選ばれた候補**だけ**を `Edit` で `[[新タイトル]]` に変換する（`[[新タイトル|表層形]]` で活用形に対応）。選ばれなかった候補は触らず、全て非選択なら cross-link を行わない。backlink は自動計算されるため逆リンクは書かない

## Sanity check

- **タグ検査**: 書いた `#[[tag]]` が Phase 1 で取得したタグ一覧に存在するか。無いものは `[[link]]` の書き間違いとして変換する（新カテゴリの意図的な新設のみ例外）
- `scraps lint --rule broken-link`
- 非自明な違反は `lint-rule-handler` agent へ引き継ぐ

## CLI

- `scraps search <query> --json` / `scraps get <title> [--ctx <ctx>] --json` / `scraps tag list --json` / `scraps lint --rule <rule>`
- `--json` は構造化出力のため必須（人間向け出力は parse が不安定）
