# Lean4 策略(tactic)速查表

本站点为 [lean-ja/tactic-cheatsheet](https://www.github.com/lean-ja/tactic-cheatsheet) 的中文翻译版本。

为了回答“如何用Lean实现日常的数学"这样一个问题，我们整理了一个通过用例可以反向查找的常用策略列表。为了增加便利性，除了策略，我们还介绍了一些基本命令。

如果您需要完整的策略列表，请查阅 [mathlib4 tactics](https://seasawher.github.io/mathlib4-tactics)。

> 这份策略列表是由lean-ja负责管理的。如果您发现了错误或有什么建议，请通过 [GitHub 仓库](https://github.com/lean-ja/tactic-cheatsheet)告知他们。

> 本中文翻译版本由 [Ericoolen](https://eric-song-nop.github.io) 维护。如果您发现了错误或有什么建议，请通过 [GitHub 仓库](https://github.com/eric-song-nop/tactic-cheatsheet)告知我。
> 您可以在[这里](https://discord.gg/p32ZfnVawh)找到lean-ja的Discord服务器。可以在这里提问或进行讨论。
> 您也可以加 QQ 群：521201572 一起讨论。

如果您喜欢这本书，不妨在GitHub上给一个星星🌟。


## 本书的特色 😎

* 本书中的所有Lean代码块都经过CI（持续集成服务）的确认，可以在版本 `{{#include ../lean-toolchain}}` 下正常运行。如果您发现任何无法运行的代码例，请通过issue告诉我们。

* 将鼠标悬停在代码块上，您会看到一个跳转至Lean Playground的按钮 <a class="fa fa-external-link"></a>，您可以点击它执行代码。

* 代码块中可能存在缺少 `import` 语句等问题，导致它们无法直接运行。在此情况下，请点击屏幕右上角的执行按钮 <i class="fa fa-play"></i>。
