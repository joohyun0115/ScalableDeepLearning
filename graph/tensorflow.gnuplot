call "common.gnuplot"

set zeroaxis
set yrange [0:]
set xlabel "cores" font "arial,20"
set ylabel "Speed-up" font "arial,20"
set ytics format " %.0s%c" font "arial,20"
set xtics  font "arial,20"
set title font "arial,20"
set term eps
set output 'tensorflow.eps'
set key at graph 1,0.25
#set linetype 1 lw 12 lc rgb '#ff0000'
set font  "arial,20"


plot \
"./data/intel_caffe_alexnet.data" every :::0::0 with lp title "Intel Caffe - Alexnet",\
"./data/tensorflow_alexnet.data" every :::0::0 with lp title "Tensorflow Idle - Alexnet",\
"./data/idle_tensorflow_alexnet.data" every :::0::0 with lp title "Tensorflow - Alexnet"

