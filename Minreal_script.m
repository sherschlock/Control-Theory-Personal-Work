% minreal for pole/zero cancellation

clear all
clc
close all

%% Example 1: TF in polynomial form
num1 = [1 3 2];
den1 = [1 2 -11 -12];

G1 = tf(num1,den1)

roots(num1)
roots(den1)

figure
pzmap(G1)

G1minimal = minreal(G1)

figure
pzmap(G1minimal)

%% Example 2: Use 'zpk' to make a dynamic system
z2 = [-2 -1];
p2 = [-4 -1 3];
k2 = [1];

G2 = zpk(z2,p2,k2)

figure
pzmap(G2)

G2minimal = minreal(G2)

figure
pzmap(G2minimal)
