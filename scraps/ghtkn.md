#[[Security/Authentication]]

[[GitHub App]] の User Access Token をローカル開発向けに発行する [[CLI]]（[[suzuki-shunsuke|@suzuki-shunsuke]] 製）。Device Flow で認証し、8 時間で失効する短命トークンを払い出すことで、長命トークン（[[PAT]] や [[gh auth login]] の OAuth トークン）が漏洩した際のリスクを抑える

## 特徴

- 発行するのは User Access Token で、操作は App ではなくユーザー本人の権限・名義で行われる
- GitHub App の Client ID のみで動作し secret は不要。失効後は `ghtkn get` が Device Flow で自動再発行する
- トークンは OS の資格情報ストア（macOS Keychain / Windows Credential Manager / GNOME Keyring）に保存し、期限まで再利用する

<https://github.com/suzuki-shunsuke/ghtkn>
