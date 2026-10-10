#[[Security/Cryptography]]

[[Amazon/KMS]] の鍵に、外で作った鍵素材を取り込む機能。鍵を origin `EXTERNAL` で作り、AWS が渡す公開鍵で鍵素材を包んで取り込む

- 一度鍵に結び付けた鍵素材は、別の鍵素材に替えられない
- [[GitHub App]] の秘密鍵を取り込めば、[[create-github-app-token-aws-kms]] で JWT の署名だけを KMS に任せられる

<https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html>
