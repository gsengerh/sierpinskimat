%clear all;
iterations = 10;
profile clear;
profile on;
m = makeSierpinskiCarpet(iterations);
profile off;
profexplore