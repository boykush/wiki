#[[Observability]] #[[Cloud Native]] #[[Blog]]

[[OpenTelemetry]]のSpan Event API（`Span.AddEvent`、`Span.RecordException`）を非推奨とし、イベントをLogs APIベースに統一する方針

- Span Eventsとログベースイベントの重複を解消し、「イベント = 名前付き[[ログ]]」としてLogs APIで記録する
- 既存のSpan Eventデータは引き続き有効で、SDK互換レイヤーによりスパン上のイベント可視性も維持される

<https://opentelemetry.io/blog/2026/deprecating-span-events/>
