# 准备工作

`sudo apt install gnuplot`

# 用法

`gnuplot 1.plt`

## 修改指标

编辑 `color.csv` ，将各省的数值直接换掉。注意必须是整数，顺序不能改变。

## 修改配色方案

修改包含 `palette` 的两行。其中

`(i-30.)/155.` 是将数值映射到 `[0,1]` 上某个数的公式，而
`defined (...)` 是调色板。把它换成 `rgbformulae 22,13,-31`
会得到彩虹色。
