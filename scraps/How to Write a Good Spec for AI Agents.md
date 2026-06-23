#[[LLM]] #[[Documentation]]

Addy Osmaniによる、AIエージェント向け仕様書 (`SPEC.md`) の書き方を論じた記事 (2026/01/13)

- 高レベルなビジョンから始め、[[Claude Code/Plan Mode]] のようなゲート機構でAIに詳細仕様を展開させる
- 6領域 (実行コマンド・テスト・プロジェクト構造・コードスタイル・Gitワークフロー・境界) を [[PRD]] 形式で構造化
- 「Curse of Instructions」: 指示を盛り込むほどモデルの追従性が低下する現象を避けるためモジュール分割を推奨
- 三段階の境界 (Always / Ask First / Never) で自律性と安全性のバランスを取る
- Spec-Driven Development (Specify → Plan → Tasks → Implement) のゲート式ワークフローで `SPEC.md` を継続的に進化させる

<https://addyosmani.com/blog/good-spec/>
