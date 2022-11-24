# set terminal postscript eps color dashed #renhanced # установка типа терминала и
# set output 'testx3p1.eps'					# --"--"-- имени .eps-файла;
set xlabel 'Положение по $x$'
set ylabel 'Величина $f(x)$'
set key right bottom samplen 5 spacing 1.5 width 5 title "p" box
set label "$f(x) = (x + p)^{3}$" at -0.5,0.9 center font "Helvetica,24"
set label "-0.9" at 0.15,-0.5; set label "-0.5" at -0.25,-0.5
set label "-0.3" at -0.45,-0.5; set label "-0.1" at -0.65,-0.5
set label "0" at -0.77,-0.50; set label "0.1" at -0.92,-0.40
set label "0.1" at 0.78, 0.90; set label "0.3" at 0.58,0.90
set label "0.5" at 0.38, 0.90; set label "0.9" at 0.10,0.90
plot [-1:1] [-1:1] 'data/testx3p.res' using 1:2 title "-0.9" w lp lc 1,\
'data/testx3p.res' using 1:3 title "-0.5" w lp lc 2,\
'data/testx3p.res' using 1:4 title "-0.3" w lp lc 3,\
'data/testx3p.res' using 1:5 title "-0.1" w lp lc 4,\
'data/testx3p.res' using 1:6 title " 0.0" w l, \
'data/testx3p.res' using 1:7 title " 0.1" w lp lc 5,\
'data/testx3p.res' using 1:8 title " 0.3" w lp lc 6,\
'data/testx3p.res' using 1:9 title " 0.5" w lp lc 7,\
'data/testx3p.res' using 1:10 title " 0.9" w lp lc 8