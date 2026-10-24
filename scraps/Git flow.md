---
sources:
  - resource: "https://nvie.com/posts/a-successful-git-branching-model/"
---

#[[Continuous Integration]]

[[Git]] のブランチ戦略。develop と master（main）を常設ブランチとし、master が本番環境相当になる。Vincent Driessen が2010年に提唱した

```mermaid
gitGraph
  commit
  branch develop
  checkout develop
  commit
  branch feature
  checkout feature
  commit
  checkout develop
  merge feature
  branch release
  checkout release
  commit id: "fix"
  checkout main
  merge release tag: "1.0"
  checkout develop
  merge release
  checkout main
  branch hotfix
  checkout hotfix
  commit
  checkout main
  merge hotfix tag: "1.0.1"
  checkout develop
  merge hotfix
```

- リリース直前の修正はリリースブランチ上で行い、master と develop の両方へマージで戻す。トランクで直してリリースブランチへ cherry-pick する [[トランクベース]] とは向きが逆
- 作者自身が2020年に、継続的にデリバリーする Web アプリには GitHub flow のような単純な流れを勧め、Git flow は明示的にバージョンを付けるソフトウェアや複数バージョンを並行で支える場合に合うとした
