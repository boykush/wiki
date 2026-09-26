[[Platform Engineering]]

[[Internal Developer Platform]]の[[Internal Developer Platform/Reference architecture|参照アーキテクチャ]]を構成する5つのプレーンの1つで、イメージをビルドして保存し、開発者が渡した抽象からアプリとインフラの設定を作り、最終状態をデプロイする部分。開発者とプラットフォームエンジニアの領分が出会う場所で、CI・イメージレジストリ・オーケストレーター・CD の4つからなる

- CI には[[GitHub Actions]]なども使える
- CD は、[[Argo CD]]のような[[GitOps]]の仕組みと組み合わせることもできる

<https://github.com/humanitec-architecture/reference-architecture-aws>
<https://www.youtube.com/watch?v=AimSwK8Mw-U>
