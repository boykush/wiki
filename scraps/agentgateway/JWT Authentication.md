#[[Security/Authentication]]

[[agentgateway]] の policy（`jwtAuth`）。route ごとに issuer・audience・JWKS を指定し、リクエストの [[JWT]] を検証する

- token を読むヘッダを指定できるので、[[Cloudflare/Access]] が付ける JWT も検証できる
- [[GitHub Actions]] の [[OIDC]] token も検証でき、`authorization` の CEL 式で claim（リポジトリ名など）を条件に、通すものを絞れる

<https://agentgateway.dev/docs/standalone/latest/documentation/configuration/security/jwt-authn/>
