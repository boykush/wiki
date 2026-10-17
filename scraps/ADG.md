## Architectural Decision Guidance

#[[Documentation]] #[[LLM]]

[[ADR]]の公式orgが公開する[[Go]]製のCLI。決定を`Accepted`で確定させる記録としてではなく`open`から始まる決定点として持ち、その集まりをモデルとしてコピー・マージし、繰り返し現れる決定に使い回す

決定の節見出しは[[MADR]]や[[Nygard ADR]]をプリセットとして選べる

[[MCP]]サーバーとしても動作する。ただしAIに読ませる先は決定の参照ではなく、その決定をコードに対して検証できる制約へ翻訳させることにある

---

<https://github.com/adr/ad-guidance-tool>
