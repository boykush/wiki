#[[Programming]]

CSSの仕様として定義されたネストされたセレクタ記法。プリプロセッサ（Sassなど）ではなくブラウザがパースする

- 全主要ブラウザでネイティブサポート（Chrome 120+、Firefox 117+、Safari 17.2+）
- ビルドステップ不要でプリプロセッサが必要な最後の理由を解消
- CSS Snapshot 2026で標準仕様として収録
- CSSNestedDeclarations実装により宣言の順序問題を解決

基本構文:

```css
.parent {
  color: blue;

  .child {
    color: red;
  }
}
```

<https://developer.mozilla.org/en-US/docs/Web/CSS/Guides/Nesting>
