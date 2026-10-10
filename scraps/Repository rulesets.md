#[[Continuous Integration]]

[[GitHub]] でブランチやタグへの操作を制限するルールの集まり。force push の禁止、Pull Request の必須化、[[require status checks]] などのルールを組み合わせ、例外にする主体（ロール、[[GitHub App]] など）を bypass list で決める

- 1つのブランチに複数の ruleset が当たると、すべてのルールが重ねて適用される
- bypass は「Pull Request を通したときだけ」に絞れる
- [[Terraform/github_repository_ruleset]] で宣言できる

<https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/about-rulesets>
