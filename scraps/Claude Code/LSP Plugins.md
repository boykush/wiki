#[[Programming]] #[[LLM]]

[[Claude Code]]で[[LSP]]（Language Server Protocol）[[Claude Code/Plugins|プラグイン]]を追加し、リアルタイムコード知能を提供する機能

主な特徴:

- 言語サーバーバイナリのインストールが必須
- IDE統合時に診断情報が自動共有される
- 公式マーケットプレイスから言語別プラグインを追加可能

サポート言語:

- C/C++
- C#
- [[Go]]([[gopls]])
- [[Java]]
- Lua
- PHP
- [[Python]]
- [[Rust]]
- Swift
- [[TypeScript]]

設定例（.claude/settings.json）:

```json
{
  "enabledPlugins": {
    "rust-analyzer-lsp@claude-plugins-official": true
  }
}
```

<https://code.claude.com/docs/en/discover-plugins>
<https://code.claude.com/docs/en/plugins>
<https://github.com/anthropics/claude-plugins-official>
