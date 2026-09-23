## Architectural Decision Enforcement

#[[Documentation]] #[[Testing]]

[[Architectural Decision Enforcement]]を実装する[[Go]]製CLI。[[ADR]]の決定を`.rule`ファイルのDSLへ書き、`compile`で言語ごとのアーキテクチャテストへ変換するか、`verify`で直接コードベースを検証する。実際の検査はプラグインへ委譲する

[[ADG]]の`adg enforce`コマンド群はこのモジュールを組み込んで動く

adr orgではなく個人リポジトリ（phi42）で公開されており、最新はv1.0.0

---

<https://github.com/phi42/ad-enforcement-tool>
