#!gnuplot

set style data histo;
set style histo cluster gap 1;
set style fill solid border -1;
set xtics rotate by -30 nomirror;
set ytics nomirror;
set key top left box enhanced

set output "appperf.pdf";
set term pdf;
set bmargin 5
set rmargin 6.2
set ylabel "Slowdown vs. Native (x)"
set label "50%" at -0.5,2.20
set label "47.3x" at 15,25.6
set yrange [0:25]

plot "cci.data" u (($2)):xtic(1) t "CCI" lt rgb "#000000", \
     "cg.data" u (($2)):xtic(1) t "Comm. Graph" lt rgb "#AAFFFF", \
     1.5 with lines lc rgb "black" lw 2 t '', \
     0 w lines lt rgb "#000000" t ''

