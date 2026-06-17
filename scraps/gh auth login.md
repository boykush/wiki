#[[Security/Authentication]]

[[GitHub]] CLI (`gh`) の認証コマンド。OAuth でブラウザ認証し、以降の API / Git 操作に使う長命の OAuth トークン（`gho_…`）をローカルに保存する

## 特徴

- 発行されるのはユーザー本人の権限・名義で動く長命トークン（明示失効するまで切れない）
- gh 2.24.0（2023-02）以降、保存先は OS の資格情報ストア（macOS Keychain / Windows Credential Manager / GNOME Keyring）がデフォルト。平文 `~/.config/gh/hosts.yml` への保存は `--insecure-storage` での opt-in

<https://github.com/cli/cli/discussions/7109>
