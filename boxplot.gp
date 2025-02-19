
set terminal pngcairo size 800,600
set output 'uslang-top20.png'
set boxwidth 0.75
set style fill solid
set xtics rotate
set title 'Top 20 Languages'
set xlabel 'Languages'
set ylabel 'Tweet Count'
print "Starting plot..."
plot 'final_swap_reduce' using 2:1 with boxes notitle


