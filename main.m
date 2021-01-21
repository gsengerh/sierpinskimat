%clear all;
iterations = 8;
profile clear;
profile on;
m = makeSierpinskiCarpet(iterations);
profile off;
profexplore