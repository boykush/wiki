#[[Network]] #[[HTTP]]

インターネット上の通信で多く用いられてきた[[TCP]]の課題を解消する、Googleが開発したプロトコル

[[UDP]]をベースし、コネクション確立によるRTTの増大を防ぎつつ、TCPと同様の高い信頼性の実現、[[TLS]]を必須とするセキュリティの考慮がされる。

HTTP/3で用いられるプロトコルで高速なHTTPS通信を実現する　

## コネクションID
QUICではIPアドレス、ポート番号を抽象化する形で宛先、送信元に対応するコネクションIDが用いられる。

コネクションIDによりモバイル機器のようなWiFi・モバイルデータ通信等が頻繁に切り替わりIPアドレスの変更がある場合でも、コネクションを途切らせずに通信を続けられる。

## QUICヘッダー
QUICヘッダーはTCPと異なり明確にロングヘッダー、ショートヘッダーの2つに分類される。ロングヘッダーはコネクション確立時、ショートヘッダーはその後のデータ送信に用いられる

ロングヘッダーはコネクション確立に必要な情報をまとめて送る（1-RTTハンドシェイク）ことでRTTの改善がされる

## ストリーム
QUICでは順序制御や再送制御を管理する単位としてストリーム（ID）という概念を用いる。ストリーム同士は独立しておりHoLブロッキングのような問題の回避をする