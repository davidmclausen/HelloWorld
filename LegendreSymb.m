function [out1, out2, out3] = LegendreSymb(p)
%Calculates Legendre Symbols by Euler's Criterion
%   input prime p, output Legendre Symbols for first ten and ten random
tic
a = randi(p-1, 10, 1); %10 random numbers to checc legendre
% a= 4*ones(10, 1)
firstten = zeros(10, 1);
veca = zeros(10, 1);
for j=1:10
    veca(j) = mod(((a(j))^(.5*(p-1))), p);
    firstten(j) = mod((j^(.5*(p-1))), p);
end
out1 = firstten
out2 = a
out3 = veca
toc




