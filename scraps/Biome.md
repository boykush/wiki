#[[Programming]]

JavaScriptとTypeScriptの高速なフォーマッター・リンター

Rustで書かれた統合ツールチェーン。ESLintとPrettierを置き換える目的で開発され、97%の互換性を持つ

主な特徴:

- **高速性**: 1000ファイルを50msでフォーマット（Prettier+ESLintは1-2秒）
- **型認識リンティング**: TypeScriptコンパイラなしで型レベルのバグを検出
- **統合環境**: 434のルールを内蔵し、単一ツールで完結
- **プラグイン対応**: v2.0からプラグインシステムを導入

対応言語:

- JavaScript/TypeScript/JSX/TSX
- JSON/HTML/CSS/GraphQL

移行支援として`biome migrate eslint`コマンドでESLint設定を自動変換できる

<https://biomejs.dev/>
