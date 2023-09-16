# left, right

ゴールが `⊢ P ∨ Q` であるとき，`left` はゴールを `⊢ P` に，`right` はゴールを `⊢ Q` に変えます．Mathlib4 に依存しているタクティクです．

`left`, `right` を使わずに Mathlib4 なしで同じことをするには，`Or.inl` または `Or.inr` を使用します．

```lean
{{#include ../Examples/LeftRight.lean:without_math}}
```