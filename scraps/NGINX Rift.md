## NGINX Rift

#[[Security]]

[[NGINX]] のソースコードを depthfirst の解析システムで監査して見つけた、18 年前から潜む RCE 脆弱性 (CVE-2026-42945, CVSS 9.2 Critical) を含む 4 件の報告

- 主要因: `rewrite`/`set` ディレクティブ処理で `is_args` フラグの伝播が抜け落ち、メモリ割り当てサイズが不足。エスケープされた URI データが境界を越えて書き込まれ RCE 成立
- 同時報告 CVE: CVE-2026-42946 (過大メモリ割り当て, High)、CVE-2026-40701 (TLS で Use After Free, Medium)、CVE-2026-42934 (UTF-8 処理の off-by-one, Medium)
- 影響: NGINX Open Source 0.6.27〜1.30.0、NGINX Plus R32〜R36、派生製品
- 開示: 2026-04-18 発見、2026-05-13 公開・パッチリリース

<https://depthfirst.com/research/nginx-rift-achieving-nginx-rce-via-an-18-year-old-vulnerability>

[[Blog|ブログ]]
