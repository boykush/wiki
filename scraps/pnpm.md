#[[Programming]]

[[JavaScript]] パッケージマネージャ。公式は "Fast, disk space efficient package manager" を標榜し、monorepo / workspace 用途を主軸に据える

## 特徴

- Content-addressable store — 全パッケージをグローバルストアに単一保存
- Hard link で project の node_modules に配置し、複数プロジェクト間での disk 重複を回避（[[npm]] が依存ごとにコピーするのと対照的）
- Non-flat node_modules — 直接依存のみを symlink で root に配置、未宣言依存への参照を防ぐ
- Workspace サポートで monorepo を扱う

<https://pnpm.io/>
