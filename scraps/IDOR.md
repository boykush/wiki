## Insecure Direct Object Reference

#[[Security]]

アクセス制御の不備により、URLやパラメータのID等を変更するだけで他のユーザーのデータにアクセスできてしまう脆弱性

[[OWASP Top Ten]]における代表的な脆弱性の一つで、Broken Access Controlの典型例

主な攻撃パターン

- URL操作: `/user/123`を`/user/124`に変更して他ユーザーの情報にアクセス
- リクエストボディ操作: POSTやPUTリクエストのID部分を改ざん
- ファイルアクセス: 静的ファイルのパス操作による機密情報の取得

対策として[[Authorization|認可]]チェックの実装とUUIDのような推測困難なIDの利用が重要

<https://cheatsheetseries.owasp.org/cheatsheets/Insecure_Direct_Object_Reference_Prevention_Cheat_Sheet.html>
