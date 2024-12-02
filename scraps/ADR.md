## Architectural Decision Records

アーキテクチャに関する意思決定とその理由を記録する文書。意思決定に際する文脈、根拠、その決定による成果物等を記述する

ADRはなぜそのアーキテクチャを選出したかの意思決定を理解するのを助ける。

ADRはチームメンバーの誰もが作成できる。ただしオーナーシップとしてAuthorは明確にする必要がある。初期ステータスは `Proposed` とする。

次に他チームメンバーによるレビューを行う。修正すべき点がある場合は `Proposed` のままアクションのアサインを行う。このときアサインはチームメンバーの誰でもよい。ADR自体はRejectする場合はステータスを `Rejected` にしADRのライフサイクルは終了する。

レビューを経て全てのアクションが完了した場合、ステータスを `Accepted` にする。一度AcceptされたADRはイミュータブルに扱い変更はしない。

---

- [Architectural Decision Records (ADRs)](https://adr.github.io/)
- [ADR process - AWS Prescriptive Guidance](https://docs.aws.amazon.com/prescriptive-guidance/latest/architectural-decision-records/adr-process.html)
