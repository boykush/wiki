#[[Security/Authentication]]

[[GitHub App]] の User Access Token をローカル開発向けに発行する [[CLI]]（[[suzuki-shunsuke|@suzuki-shunsuke]] 製）。Device Flow で認証し、8 時間で失効する短命トークンを払い出すことで、長命トークン（[[PAT]] や [[gh auth login]] の OAuth トークン）が漏洩した際のリスクを抑える

<https://github.com/suzuki-shunsuke/ghtkn>
