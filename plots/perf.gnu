#!gnuplot

set style data histo;
set style histo cluster gap 1;
set style fill solid border -1;
set xtics rotate by -30 nomirror;
set ytics nomirror;
set key top left box enhanced

set output "perf.pdf";
set term pdf;
set label "10%" at -1,1.22
set label "50%" at -1,1.62
set bmargin 5
set rmargin 6.2
set format y "%g"
set ylabel "Slowdown vs. Native"

#plot "perf.data" u 2:xtic(1) t "CTraps-Full" lt rgb "#000020", '' u 3 t "CTraps--" lt rgb "#000080", '' u 4 t "CTraps-LWT" lt rgb "#0000F0", 1.1 with lines lc rgb "black" lw 3 t '', 1.5 with lines lc rgb "black" lw 3 t ''
plot "perf.data" u 2:xtic(1) t "CTraps" lt rgb "#000000", '' u 4 t "LWS" lt rgb "#AAFFFF", 1.1 with lines lc rgb "black" lw 3 t '', 1.5 with lines lc rgb "black" lw 3 t ''
