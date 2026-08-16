#[[Security]]

[[zizmor]]の audit。job が必要とする以上の write 権限を `permissions:` が与えているケースを検出する

- workflow ルートの宣言は全 job に継承されるため、third-party action の侵害（[[zizmor/unpinned-uses]]）で不要な権限まで奪われる
- 被害範囲は job が持つ[[GITHUB_TOKEN]]のスコープに比例する。[[最小権限の原則]]を CI トークンに適用する audit

<https://docs.zizmor.sh/audits/#excessive-permissions>
