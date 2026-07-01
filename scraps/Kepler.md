## Kubernetes-based Efficient Power Level Exporter

#[[Cloud Native]] #[[Observability]]

[[CNCF]] Sandbox プロジェクト。Kubernetes クラスター上のワークロードの電力消費量を計測し、[[Prometeus]] メトリクスとして公開するOSS。

- ハードウェアの電力メーターを読み取り、Linux プロセスへの電力帰属を経て Pod に紐付ける
- 旧アーキテクチャは [[eBPF]] ベースで `CAP_BPF`・`CAP_SYSADMIN` 権限が必要だったが、新アーキテクチャでは `/proc` と `/sys` への読み取り専用アクセスに移行
- ランタイムでホストの電力メーター構造を動的検出することで多様なハードウェアに対応

---

<https://www.cncf.io/blog/2026/06/30/kepler-re-architected-improved-power-accuracy-and-a-community-call-to-action/>
