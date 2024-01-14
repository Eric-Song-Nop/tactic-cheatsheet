/- # tauto

`tauto` は, トートロジー(恒真式, tautology)であることに基づいてゴールを閉じるタクティクです． ゴールを閉じることができなければエラーになります． -/
import Aesop -- `aesop` を使うため --#
import Mathlib.Tactic.LibrarySearch -- `exact?` を使うため --#
import Mathlib.Tactic.Tauto -- `tauto` を使うのに必要

variable (P Q R : Prop)

-- 含意の導入
example (h : P) : Q → P := by
  tauto

-- フレーゲの3段論法
example : (P → (Q → R)) → ((P → Q) → (P → R)) := by
  tauto

/-! ## aesop との比較
トートロジーの中には `aesop` で示せるものも数多くあります．
-/

variable (α : Type) (S : α → Prop)

-- 排中律
example : P ∨ ¬ P := by
  -- `aesop` では示すことができない
  try aesop

  tauto

example : ¬(∀ x, S x) → (∃ x, ¬ S x) := by
  -- `tauto` では示せない
  try tauto

  aesop

-- 対偶は `aesop` でも `tauto` でも示せる
example (h : P → Q) : ¬ Q → ¬ P := by aesop

example (h : P → Q) : ¬ Q → ¬ P := by tauto