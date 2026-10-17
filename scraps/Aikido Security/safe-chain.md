#[[Security]]

[[npm]] / pip など各種パッケージマネージャの download をローカルプロキシで intercept し、マルウェアを含むパッケージのインストールを未然にブロックする OSS

- 対応 PM は npm / yarn / [[pnpm]] / bun や pip / uv / poetry など
- 公開から 48 時間未満のパッケージをデフォルトでブロック（[[サプライチェーン攻撃]] 緩和）

<https://github.com/AikidoSec/safe-chain>
