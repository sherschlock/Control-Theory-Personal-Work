clear all
clc
close all

s = tf('s')';
wn = 1;
epsilon = linspace(0,1,10);

dens = [];
for i = 1:10
    dens = [dens ; 1 2*epsilon(i)*wn wn^2];
end

nums = wn^2*ones(10,1);

G = [];
for i=1:10
    G = [G ; tf(nums(i),dens(i,:))];
end

bode(G(1),G(2),G(3),G(4),G(5),G(6),G(7),G(8),G(9),G(10))
grid on
legend