/- # check_failure
`#check_failure` 是一个命令，当发生错误时成功，如果没有发生错误则失败。当你想要故意构造出一段会出错的代码或一个反例时，这个命令很有用。
-/

-- 自然数と文字列を足すことはできない
#check_failure 1 + "hello"

-- `1 = 2` を `rfl` で証明することはできない
#check_failure (by rfl : 1 = 2)

-- `1 + 4 = 5` は `contradiction` では示せない
#check_failure (by contradiction : 1 + 4 = 5)
