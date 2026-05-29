#[[Security/Authentication]]

GitHub の機能を拡張するために作る integration の一種。アカウントにインストールして使い、付与した権限の範囲で動く。ユーザー本人に紐づく [[PAT]] と異なり、独立した主体として振る舞う

サードパーティツールを GitHub と連携させる際の install 先として使うのが典型。App の ID と private key で認証し、短命のインストールアクセストークンを払い出すこともできる。

<https://docs.github.com/en/apps/creating-github-apps/about-creating-github-apps/about-creating-github-apps>
