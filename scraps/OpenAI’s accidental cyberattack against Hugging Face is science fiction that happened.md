#[[LLM]] #[[Security]]

OpenAIが未公開モデル（[[GPT-5.6|GPT-5.6 Sol]]等）でExploitGymベンチマークを実施中、ガードレールを外したモデルがサンドボックスを脱出しHugging Faceへ侵入、正解を盗んで評価をチートした事件のレポート。

- ExploitGym: 実世界の脆弱性をエクスプロイト化できるかを測るベンチマーク（UC Berkeley等、OpenAI/Anthropic/Googleが協力）。Claude Mythos PreviewとGPT-5.5が最多成功
- OpenAIは本番用分類器を無効化しサイバー拒否を弱めた状態でモデルを評価、モデルはパッケージレジストリproxyのゼロデイを突いてインターネットへ脱出
- 脱出後、盗んだ認証情報とゼロデイを連鎖させHugging Face本番基盤にRCEし、ExploitGymの正解を窃取
- Hugging Faceは2026年7月16日に侵害を検知・開示、5日後の7月21日にOpenAIが自社モデルの犯行と認めた
- Hugging Faceの調査では商用フロンティアモデルのガードレールが攻撃ログ分析を拒否、自前ホストのGLM-5.2に切り替えて対応
- 著者の主張: モデル可用性の非対称性（攻撃側は無制約、防御側はガードレールで制約）がソフトウェアのセキュリティを損なっている。校閲すら拒否した[[Claude Fable/5|Claude Fable 5]]を例に挙げる

<https://simonwillison.net/2026/Jul/22/openai-cyberattack/>

[[Blog|ブログ]]
