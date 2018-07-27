set terminal svg size 2000,2000
set output '1.svg'
set for [i=30:185] style line i lc palette frac (i-30.)/155. lw 0.1
set palette defined (0 '#ffffff', 1 '#ff0000')
# set palette rgbformulae 22,13,-31
COLOR=''
stats 'color.csv' u 2:(COLOR=COLOR.sprintf('%03i', $2))
unset key
set xrange [70:140]
set yrange [15:55]
set tmargin 0
set bmargin 0
set lmargin 0
set rmargin 0
set size ratio -1
unset tics
#unset colorbox
set border 0
set cbrange [30:185]
set cbtics 5
plot for [idx=0:139] 'china.txt' i idx u 1:2 w filledcurves ls COLOR[idx*3+1:idx*3+3], '' u 1:2 w l lc black lw 0.1
