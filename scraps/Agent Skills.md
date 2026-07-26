#[[LLM]]

[[会話型エージェント]]へ手続き的知識（ワークフロー・スクリプト・参照資料）をパッケージして与える[[Anthropic]]社発のオープン標準

- frontmatter（name / description）と指示本文からなる `SKILL.md` を含むフォルダとして配布される
- Progressive disclosure が核: 常駐するのは name / description のみで、本文はタスク合致時、同梱ファイルは参照時に初めて読み込まれコンテキストを節約する

<https://agentskills.io>
