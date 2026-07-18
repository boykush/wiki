#[[Programming]]

Martin Odersky と Haoyi Li による [[Scala]] の進化方針を示した公式ブログ記事（2025-03-24）。安定性だけでは主流言語と競えないため進化を続けるべき、という立場から言語・ツール・ガバナンスの方向性を示す

- 言語の二軸: 安全性の向上（capture checking・explicit nulls・safe initialization）と利便性の向上（enums・optional braces・named tuples）を両立させる
- ビルドツール: Scala CLI が 3.5.0 以降デフォルトランチャー化、Mill が伸長、sbt 2.0 でリモートキャッシュ導入。長年の断片化に「トンネルの出口が見えた」とする
- ガバナンス: コア言語は Scala Center（EPFL）、Metals / Scala CLI / Scala 3 LTS は VirtusLab が担う。JetBrains が Scala Center の advisory board に参加
- 明確に退けた案: フレームワーク統合（Akka→ZIO→Kyo と多様であるべき）と機能凍結（凍結は言語を殺す）

<https://www.scala-lang.org/blog/2025/03/24/evolving-scala.html>
