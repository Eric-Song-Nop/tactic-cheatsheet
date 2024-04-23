/- # all_goals

`all_goals` 将会把跟随其后的策略应用到所有目标上。
-/
variable (P Q : Prop)

example (hP : P) (hQ : Q) : P ∧ Q := by
  -- 我们需要分别证明 `P` 和 `Q`
  constructor

  -- 两者都可以由假设导出，
  -- 所以我们对两者都应用 `assumption` 策略
  all_goals assumption

/-! 你也可以向 `all_goals` 传递一个策略块。-/

example {R : Prop} (hnP : ¬ P) : (P → R) ∧ (P → Q) := by
  constructor
  all_goals
    intro h
    contradiction

/-!
## 策略组合 `<;>`
策略组合 `<;>` 也可以完成类似的工作。
-/

example (hP : P) (hQ : Q) : P ∧ Q := by
  constructor <;> assumption

/-! しかし, `<;>` と `all_goals` は完全に同じではありません．
`<;>` が「直前のタクティクによって生成された全てのサブゴール」に対して後続のタクティクを実行するのに対して，`all_goals` は「すべての未解決のゴール」に対して後続のタクティクまたはタクティクブロックを実行します．

実際に以下のような例ではその違いが現れます．
-/
/-! 然而，`<>` 和 `all_goals` 并不完全相同。
`all_goals` 会将随后的策略或策略块，在"所有未解决目标" 上执行
而`<;>` 是将随后的策略执行在"`<;>`前面的策略生成的所有次级目标"上。

实际上，如下例子所示，两者之间的差异是显而易见的。
-/

variable (P Q R : Prop)

example (hP : P) (hQ : Q) (hR : R) : (P ∧ Q) ∧ R := by
  constructor

  constructor <;> try assumption

  -- 依然有证明待完成的部分
  show R
  assumption

example (hP : P) (hQ : Q) (hR : R) : (P ∧ Q) ∧ R := by
  constructor

  constructor
  all_goals
    try assumption

  -- 证明完成
  done
