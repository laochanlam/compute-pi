reset
set ylabel 'time(sec)'
set style data lines
set title 'Compute-pi'
set term png enhanced font 'Verdana,10'
set output 'runtime.png'
set xtics 100,5000,100000
set xtics rotate by 45 right

plot [:][:0.05]'result_clock_gettime.csv' using 1:2 "%lf,%lf,%lf,%lf,%lf,%lf" title 'Baseline', \
'' using 1:3 "%lf,%lf,%lf,%lf,%lf,%lf" title 'OpenMP ( 2 threads )', \
'' using 1:4 "%lf,%lf,%lf,%lf,%lf,%lf" title 'OpenMP ( 4 threads )', \
'' using 1:5 "%lf,%lf,%lf,%lf,%lf,%lf" title 'AVX', \
'' using 1:6 "%lf,%lf,%lf,%lf,%lf,%lf" title 'AVX + Unroll looping'
