%clear all;
iterations = 11;
profile clear;
profile on;
m = makeSierpinskiCarpet(iterations);
profile off;
profexplore