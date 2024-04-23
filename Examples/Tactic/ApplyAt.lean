/- # apply .. at

`apply` 常用于应用于目标（goal），但添加 `at` 后可以用于局部上下文（local context）中的命题等。

实际上这个带 `at` 的语法和 `apply` 只是相似，并不相同，它是另一个策略。这个带 `at` 的语法与常规的 `apply` 不同，不是后向推理（backward reasoning），而是前向推理（forward reasoning）。
-/
import Mathlib.Tactic.ApplyAt

variable (P Q : Prop)

example (h : P → Q) (hP : P) : Q := by
  -- 将 `h` 应用于 `hP`
  apply h at hP

  -- `hP` 被重写
  guard_hyp hP : Q

  assumption

/-! 它不仅仅是一个方便的记法，你也可以使用其他策略来实现同样的效果。-/

example (h : P → Q) (hP : P) : Q := by
  -- `apply at` 可以像 `replace` 一样使用
  replace hP := h hP

  -- `hP` 被重写
  guard_hyp hP : Q

  assumption
