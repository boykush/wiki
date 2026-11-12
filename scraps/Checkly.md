---
sources:
  - resource: "https://www.checklyhq.com/docs/"
  - resource: "https://www.checklyhq.com/docs/playwright-checks/"
  - resource: "https://www.checklyhq.com/docs/cli/"
---

#[[Observability]]

[[Playwright]] のコードを [[E2Eテスト]] だけでなく、[[合成監視|外形監視]]として動作させるための SaaS

- [[合成監視]]として本番へ定期的に操作を送るので、実ユーザーがいない時間帯でも失敗を検知できる
- Playwright Check Suites を使うと、既存の [[E2Eテスト]] をコードも設定も変えずに、project やタグで選んで監視にできる
- 監視を `checkly.config.ts` などでリポジトリに置く Monitoring as Code で、`npx checkly test` で試してから `npx checkly deploy` で登録する
