## Insecure Direct Object Reference

#[[Security/Authorization]]

アクセス制御の不備により、URLやパラメータのID等を変更するだけで他のユーザーのデータにアクセスできてしまう脆弱性

[[OWASP Top Ten]]における代表的な脆弱性の一つで、Broken Access Controlの典型例

対策として認可チェックの実装とUUIDのような推測困難なIDの利用が重要

<https://cheatsheetseries.owasp.org/cheatsheets/Insecure_Direct_Object_Reference_Prevention_Cheat_Sheet.html>
