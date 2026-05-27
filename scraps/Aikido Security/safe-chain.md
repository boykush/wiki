#[[Security]]

npm / pip など各種パッケージマネージャの download をローカルプロキシで intercept し、マルウェアを含むパッケージのインストールを未然にブロックする OSS

対応 PM: npm, npx, yarn, pnpm, pnpx, rush, rushx, bun, bunx, pip, pip3, uv, poetry, uvx, pipx, pdm

## 特徴

- リアルタイムスキャンに Aikido Intel (Open Source Threat Intelligence) を利用
- 公開から 48 時間未満のパッケージをデフォルトでブロック（[[サプライチェーン攻撃]] 緩和）
- Tokenless / no build data shared — credentials も telemetry も不要
- Bash / Zsh / Fish / PowerShell の shell integration、CI/CD 用 shim、private registry 対応

<https://github.com/AikidoSec/safe-chain>
