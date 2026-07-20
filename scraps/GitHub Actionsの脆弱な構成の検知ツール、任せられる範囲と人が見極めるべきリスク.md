#[[Security]] #[[Continuous Integration]]

[[GitHub Actions]] ワークフロー脆弱性の検知ツール比較と、ツールに任せられる範囲・人が見極めるべきリスクを整理した Flatt Security ブログ記事（シリーズ Vol.4 最終回）

- **ツールが検知できる**: Script Injection・外部 Action のピン留め未使用・過剰な権限設定（YAML から確定できるパターン）を5ツール（CodeQL・[[zizmor]]・OpenSSF Scorecard・poutine・checkov）が横断的に報告
- **ツールが見えない**: Classic [[PAT]] 使用・Immutable Releases 未使用・Environments 保護の設計意図・AI エージェント固有パラメータ（`allowed_non_write_users: "*"` 等）はどのツールも検知しない
- **トリアージの課題**: 数百件規模の検知が積み上がりやすく、Severity はカテゴリ固定で組織文脈を反映しない；複数ツールが同一箇所を別ルール名で重複報告する
- **リスク評価の視点**: 単一脆弱性ではなく「連鎖」で評価する（`pull_request_target` + `contents: write` が組み合わさって [[サプライチェーン攻撃]] に至るかを組織全体で確認）
- **対策の3軸**: 侵害の抑止 / 被害の局所化（fine-grained [[PAT]]・Environments 保護）/ 追跡可能性（runner 上の挙動記録）

<https://blog.flatt.tech/entry/2026-github-actions-security-part4>

[[Blog|ブログ]]
