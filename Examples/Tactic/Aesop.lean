/-
# aesop

`aesop` 是： Automated Extensible Search for Obvious Proofs (可扩展的自明证明的自动探索)的缩写。与Isabell的`auto`类似，`aesop`会使用`intro`和`simp`来自动完成例行证明。
-/
import Aesop -- 引入依赖以使用 `aesop`
import Mathlib.Init.Function -- 引入依赖以使用 `Injective`

-- 声明集合 `X`, `Y`, `Z`
variable {X Y Z : Type}

open Function

-- 如果复合 `g ∘ f` 是单射，则 `f` 也是单射。
example {f : X → Y} {g : Y → Z} (hgfinj : Injective (g ∘ f)) : Injective f := by
  rw [Injective]
  show ∀ ⦃a₁ a₂ : X⦄, f a₁ = f a₂ → a₁ = a₂

  -- 虽然看起来还有很多需要证明的地方，但实际上可以一次性完成证明。
  aesop

/-!
## aesop?

当 `aesop` 成功时，如果你将其替换为 `aesop?`，它会告诉你实现目标使用了哪些策略。
-/

example {f : X → Y} {g : Y → Z} (hgfinj : Injective (g ∘ f)) : Injective f := by
  rw [Injective]

  /-
  Try this:
  intro a₁ a₂ a
  apply hgfinj
  simp_all only [comp_apply]
  -/
  aesop?

/-! ## 补充
`aesop` 具有如下特性：

* 类似于 `simp`，您可以通过添加 `@[aesop]` 属性(attribute)来注册引理或者定义，并让 `aesop` 使用它们。
* `aesop` 将尝试将注册的规则应用于最初的目标。如果成功并产生了子目标，`aesop` 会递归地将规则应用于子目标，构建搜索树。
* 搜索树通过最佳优先搜索(best-first search)进行搜索。规则可以被标记为可能非常有用或较不有用，`aesop` 会首先检查搜索树中看起来更有希望的目标。
* `aesop` 首先使用 `simp_all` 来标准化目标，所以 `simp` 使用的引理也会被 `aesop` 使用。

如果您想了解更多详细信息，请参见 [aesop的仓库](https://github.com/leanprover-community/aesop)。
-/

/-! ## 译者补充
在使用 `aesop` 后，应尽量将其替换为详细的策略以增加证明的可读性,稳定性。
-/
