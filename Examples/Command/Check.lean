/- # check

`#check` 命令用于显示项的类型。在 Lean 中，所有项都有类型，因此可以对任何项使用。使用命令 `#check term` 来显示 `term` 的类型。相反，如果你想确认 `term` 的类型是 `T`，可以使用 `example` 命令并编写 `example : T := term`。

## 基础类型 -/

import Mathlib.Init.Set -- 引入以使用 `Set` --#

-- 字符
#check 'a'

-- 字符串
#check "Hello"

-- 自然数
#check 1

-- 浮点数
#check 1.0

-- 整数
#check -2

-- 如果只写 `1` 会默认为自然数，但可以被强制转换为整数
#check (1 : Int)

-- 自然数列表
#check [1, 2, 3]

-- 自然数数组
#check #[1, 2, 3]

-- 函数
#check fun x ↦ x + 42

-- Bool, 布尔类型
#check true

-- 命题
#check True

/-!
  ## 类型的类型
  因为在 Lean 中“所有”的项都有类型，类型本身也拥有类型。
-/

#check (Prop : Type)

-- 在 Lean 中，`List` 是一个函数，它接收 Type 并返回 Type。
-- List.{u} (α : Type u) : Type u
#check List

-- 配列も同じ．型を型に変換する関数．
-- Array.{u} (α : Type u) : Type u
#check Array

-- `Type` 本身也有类型…
-- Type : Type 1
#check Type

-- Type 1 : Type 2
#check Type 1

-- 声明宇宙变量
universe u

-- 这样可以无限扩展
-- Type u : Type (u + 1)
#check Type u

/-! ## 命题和证明
在 Lean 中，命题和它们的证明也具有类型。命题的类型是 `Prop`，命题的项就是它的证明。换句话说，在 Lean 中，证明某一命题 `P : Prop` 就等同于构造一个类型为 `P` 的项 `proof : P`。
-/

-- Prop
#check 1 + 1 = 2

-- 构造 `1 + 1 = 2` 的证明 `two_eq_add_one`
theorem two_eq_add_one : 2 = 1 + 1 := by rfl

-- 证明的类型就是命题
#check (two_eq_add_one : 2 = 1 + 1)

/-! ## 作为类型的 True/False
作为类型，`True` 相当于单元素集合 (unit set)，
而 `False` 相当于空集。
-/

-- `trivial : True` 是一个拥有 `True` 类型的项
#check trivial

/-! ## 证明作为函数
命题 `P → Q` 的证明是一种 `P → Q` 类型的项。
也就是说，它是一个函数，对于命题 `P` 的证明 `h : P`，可以返回命题 `Q` 的证明。
-/

theorem tautology : True -> True := fun a ↦ a

-- 为了明确恒真式的变量，我们添加了 `@`。
-- 输出将会是 `tautology : True → True`，
-- 从中我们可以看出 `tautology` 是一个 `True → True` 类型的函数
#check @tautology

-- 如果我们实际上“填入” `trivial : True`，
-- 我们会得到 `tautology trivial : True`，
-- 确认确实得到了一个 `True` 类型的项。
#check tautology trivial
