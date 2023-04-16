clear all
clc
close all

% Define constants

m=1;
c=3;
k=5;

% Create a transfer function for the Spring-Mass-Damper System

G_num = [1];
G_den = [m c k];
G = tf(G_num,G_den)

% Response due to a step input

final_time = 10;
%step(G,final_time)      % A step response is exactly what it sounds like. It plots the response of the transfer function to a step input
bode(G)
% Response to a sinusoidal input done directly in Simulink