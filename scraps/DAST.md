## Dynamic Application Security Testing

#[[Security]] #[[Testing]]

稼働中のアプリケーションに対して外部から攻撃シミュレーションを行い、セキュリティ脆弱性を検出するテスト手法

ブラックボックステストとも呼ばれ、ソースコードを参照せず実行時の挙動を分析する

## 特徴

- [[DevSecOps]]の継続的セキュリティテストを実現
- 認証、セッション管理、入力検証などランタイムの脆弱性を検出
- 代表ツール: OWASP ZAP / Burp Suite
- 検出結果を [[SARIF]] 形式で出力するツールも多い

<https://owasp.org/www-project-devsecops-guideline/latest/02b-Dynamic-Application-Security-Testing>
