clear all
clc
close all

s = tf('s');
A = 2.3;
e = 0.2;
wn = 1.5;

G = wn^2/(s^2+2*e*wn*s+wn^2);
R = A/s;

Y = G*R;

step(A*G)