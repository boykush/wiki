## Workload Identity Federation

#[[Security/Authentication]]

[[Claude]] の API で 2026-06-17 に GA になった認証方式で、[[IdP]] が発行した [[OIDC]] の ID トークン（[[JWT]]）を短命のアクセストークンに交換し、静的な API キーを不要にする。トークンは Claude Console の organization の service account として動き API 従量で課金されるため、Pro・Max・Team・Enterprise のシートの枠では使えない

<https://platform.claude.com/docs/ja/manage-claude/workload-identity-federation>
