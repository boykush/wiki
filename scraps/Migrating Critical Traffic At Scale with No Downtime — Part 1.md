---
type: Blog
sources:
  - resource: "https://netflixtechblog.com/migrating-critical-traffic-at-scale-with-no-downtime-part-1-ba1c7a1c7835"
---

#[[Testing]] #[[Continuous Delivery]]

Netflix の Shyam Gala、Javier Fernandez-Ivern、Anup Rokkam Pratap、Devang Shah が Netflix Technology Blog に書いた記事（2023-05-05）。本番トラフィックを複製して新しい経路にも流し、切り替える前に正しさと性能を確かめる手法を述べる

- 対象は [[マイクロサービス]] の呼び出しグラフのどこでもよく、例に中間層サービスの REST から [[gRPC]] への移行を挙げる
- 新旧の応答は [[Apache Iceberg]] に貯め、タイムスタンプの無視や並び順の統一で正規化してからオフラインのバッチで比べる。状態を持つシステムでは応答に加えて状態も比べる必要があり、同じ状態から始めた別々のデータストアを両経路に用意する。この複雑さから、状態を持つ移行には別の手法を使うとして続編に回している
