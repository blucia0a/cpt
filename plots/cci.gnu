#!gnuplot

set style data histo;
set style histo cluster gap 1;
set style fill solid border -1;
set xtics rotate by -30 nomirror;
set ytics nomirror;
set key top left box enhanced

set output "cci.pdf";
set term pdf;
#set label "10%" at -1,1.22
set label "50%" at -0.5,1.92
set bmargin 5
set rmargin 6.2

plot "cci.data" u 2:xtic(1) t "CCI" lt rgb "#000040", 1.5 with lines lc rgb "black" lw 3 t ''
