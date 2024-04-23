# README

![workflow](https://github.com/lean-ja/tactic-cheatsheet/actions/workflows/ci.yml/badge.svg) ![workflow](https://github.com/lean-ja/tactic-cheatsheet/actions/workflows/deploy.yml/badge.svg)

这是一个根据使用场景逆向查询 Lean4 的主要策略的列表。

## Translation Progress

- コマンド紹介
    - [ ] [#check_failure: 意図的なエラー](./Command/CheckFailure.md)
    - [ ] [#check: 型を調べる](./Command/Check.md)
    - [ ] [#eval: 式を評価する](./Command/Eval.md)
    - [ ] [#find: ライブラリ検索](./Command/Find.md)
    - [ ] [#guard_msgs: 出力メッセージのテスト](./Command/GuardMsgs.md)
    - [ ] [#guard: Bool 値のテスト](./Command/Guard.md)
    - [ ] [#help: ドキュメントを見る](./Command/Help.md)
    - [ ] [#instances: インスタンスを列挙](./Command/Instances.md)
    - [ ] [#print: 中身を見る](./Command/Print.md)
    - [ ] [#synth: 型クラスの検査](./Command/Synth.md)
    - [ ] [#time: 実行時間計測](./Command/Time.md)

- Tactics 介绍

    - [x] [aesop: 自明的证明的自动搜索](./Tactic/Aesop.md)
    - [x] [all_goals: 应用到所有目标上](./Tactic/AllGoals.md)
    - [x] [apply .. at: apply 应用于](./Tactic/ApplyAt.md)
    - [ ] [apply_assumption: 仮定を自動で apply](./Tactic/ApplyAssumption.md)
    - [ ] [apply: 含意→を使う](./Tactic/Apply.md)
    - [ ] [apply?: apply できるか検索](./Tactic/ApplyQuestion.md)
    - [ ] [assumption: 仮定を自動で exact](./Tactic/Assumption.md)
    - [ ] [by_cases: 排中律](./Tactic/ByCases.md)
    - [ ] [by_contra: 背理法](./Tactic/ByContra.md)
    - [ ] [by: タクティクモードに入る](./Tactic/By.md)
    - [ ] [calc: 計算モードに入る](./Tactic/Calc.md)
    - [ ] [cases: 場合分けをする](./Tactic/Cases.md)
    - [ ] [cases': Lean3版のcases](./Tactic/CasesAp.md)
    - [ ] [choose: 選択関数を得る](./Tactic/Choose.md)
    - [ ] [clear: 命題や定義を削除する](./Tactic/Clear.md)
    - [ ] [congr: ゴールの差異に注目する](./Tactic/Congr.md)
    - [ ] [constructor: 論理積∧を示す](./Tactic/Constructor.md)
    - [ ] [contradiction: 爆発律](./Tactic/Contradiction.md)
    - [ ] [contrapose: 対偶をとる](./Tactic/Contrapose.md)
    - [ ] [conv: 変換モードに入る](./Tactic/Conv.md)
    - [ ] [convert: 惜しい補題を使う](./Tactic/Convert.md)
    - [ ] [done: 証明終了を宣言](./Tactic/Done.md)
    - [ ] [exact: 証明を直接構成](./Tactic/Exact.md)
    - [ ] [exact?: exact できるか検索](./Tactic/ExactQuestion.md)
    - [ ] [exists: 存在∃を示す](./Tactic/Exists.md)
    - [ ] [ext: 外延性を使う](./Tactic/Ext.md)
    - [ ] [field_simp: 分母を払う](./Tactic/FieldSimp.md)
    - [ ] [fin_cases: 場合分けを簡潔に行う](./Tactic/FinCases.md)
    - [ ] [fun_prop: 関数の諸性質を示す](./Tactic/FunProp.md)
    - [ ] [funext: 関数等式を示す](./Tactic/Funext.md)
    - [ ] [gcongr: 合同性を用いる](./Tactic/Gcongr.md)
    - [ ] [guard_hyp: 仮定や補題を確認](./Tactic/GuardHyp.md)
    - [ ] [have: 補題を用意する](./Tactic/Have.md)
    - [ ] [hint: 複数のタクティクを同時に試す](./Tactic/Hint.md)
    - [ ] [induction: 帰納法](./Tactic/Induction.md)
    - [ ] [induction': Lean3版のinduction](./Tactic/InductionAp.md)
    - [ ] [intro: 含意→や全称∀を示す](./Tactic/Intro.md)
    - [ ] [left, right: 論理和∨を示す](./Tactic/LeftRight.md)
    - [ ] [linarith: 線形(不)等式を示す](./Tactic/Linarith.md)
    - [ ] [native_decide: 実行時に判ることを示す](./Tactic/NativeDecide.md)
    - [ ] [nlinarith: 非線形な(不)等式を示す](./Tactic/Nlinarith.md)
    - [ ] [nth_rw: n 番目の項だけ rw](./Tactic/NthRw.md)
    - [ ] [omega: 自然数の線形計画を解く](./Tactic/Omega.md)
    - [ ] [push_neg: ドモルガン](./Tactic/PushNeg.md)
    - [ ] [refine: 後方推論](./Tactic/Refine.md)
    - [ ] [rel: 不等式を使う](./Tactic/Rel.md)
    - [ ] [rename_i: 死んだ変数に名前を付ける](./Tactic/RenameI.md)
    - [ ] [repeat: 繰り返し適用](./Tactic/Repeat.md)
    - [ ] [replace: 補題の入れ替え](./Tactic/Replace.md)
    - [ ] [rfl: 関係の反射性を示す](./Tactic/Rfl.md)
    - [ ] [ring: 可換環の等式を示す](./Tactic/Ring.md)
    - [ ] [rw_search: rw で示せるか検索](./Tactic/RwSearch.md)
    - [ ] [rw: 同値変形](./Tactic/Rw.md)
    - [ ] [says: タクティク提案の痕跡を残す](./Tactic/Says.md)
    - [ ] [set: 定義の導入](./Tactic/Set.md)
    - [ ] [show: 示すべきことを宣言](./Tactic/Show.md)
    - [ ] [simp: 簡約](./Tactic/Simp.md)
    - [ ] [slim_check: 反例を見つける](./Tactic/SlimCheck.md)
    - [ ] [sorry: 証明したことにする](./Tactic/Sorry.md)
    - [ ] [split: if/match 式を分解](./Tactic/Split.md)
    - [ ] [suffices: 十分条件に帰着](./Tactic/Suffices.md)
    - [ ] [tauto: トートロジーを示す](./Tactic/Tauto.md)
    - [ ] [trivial: 自明](./Tactic/Trivial.md)
    - [ ] [try: 失敗をエラーにしない](./Tactic/Try.md)
    - [ ] [unfold: 定義に展開](./Tactic/Unfold.md)
    - [ ] [wlog: 一般性を失わずに特殊化](./Tactic/Wlog.md)

## CONTRIBUTING

誤りの指摘，編集の提案や寄稿を歓迎いたします．この GitHubリポジトリに issue や Pull Request を開いてください．

* 句読点は `,` `.` を使用します．
* タクティク `tactic` に対して，記事の名前は `tactic: (日本語による一言説明)` とします．
* `src/SUMMARY.md` のタクティク記事は，アルファベット昇順に並べてください．VSCode だと `Tyriar.sort-lines` という拡張機能があって，並び替えを自動で行うことができます．
* Lean コードは，コンパイルが通るようにして `Examples` 配下に配置します．「タクティクが失敗する例」を紹介したいときであっても `try` や `#guard_msgs` などを使ってコンパイルが通るようにしてください．コード例が正しいかチェックする際にその方が楽だからです．
* 本文の markdown ファイルは [mdgen](https://github.com/Seasawher/mdgen) を用いて lean ファイルから生成します．lean ファイルを編集した後，`lake run build` コマンドを実行すれば markdown の生成と `mdbook build` が一括実行されます．

## スポンサー

このプロジェクトは [Proxima Technology](https://proxima-ai-tech.com/) 様よりご支援を頂いています.

![logo of Proxima Technology](./src/image/proxima.png)

Proxima Technology（プロキシマテクノロジー）は数学の社会実装を目指し, その⼀環としてモデル予測制御の民主化を掲げているAIスタートアップ企業です．数理科学の力で社会を変えることを企業の使命としています．
