#!gnuplot

set style data histo;
set style histo cluster gap 1;
set style fill solid border -1;
set xtics rotate by -30 nomirror;
set ytics nomirror;
set key top left box enhanced

set output "appmm.pdf";
set term pdf;
set bmargin 5
set rmargin 6.2
set ylabel "% Speedup vs. CTraps-Full"
set format y "%g %%"
#set yrange [-.05:.15]
set label at 7.7,25.7 "45%"
#set label at 11,310 "45%"

plot "appmm.data" u (100*($3-1)):xtic(1) t "CCI" lt rgb "#000000", \
     "appmm.data" u (100*($2-1)):xtic(1) t "Comm. Graph" lt rgb "#AAFFFF", \
     0 w lines lt rgb "#000000" t ''

