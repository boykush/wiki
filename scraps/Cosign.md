#[[Security]]

[[Sigstore]] の CLI（client）。container image / blob / artifact の署名と [[署名検証]] を行う

- 署名のたびに ephemeral 鍵ペアを生成する keyless 方式に対応する（鍵を保管しない identity-based モデル）
- 自前鍵による key-based 署名もサポートする

<https://docs.sigstore.dev/cosign/signing/overview/>
