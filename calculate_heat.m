%Function that calculates the heat generated
%following Mie theory.

%Needs the function mie.m and mie_abcd.m which have been written by C.
%Matzler, Institute of Applied Physics, University of Bern 2002.
%Mätzler, C.. “MATLAB Functions for Mie Scattering and Absorption.” (2002).
%Available at https://scattport.org/index.php/programs-menu/mie-type-codes-menu/111-mie-matlab-maetzler


function [Qabs,Qeff] = calculate_heat(I0,lambda,r)

ew = 1.333^2;
Area = pi*r^2;

x = r*2*pi()*sqrt(ew)./lambda;
m = sqrt(dielectric_gold(lambda,r))/sqrt(ew);


for i=1:length(lambda)
    A = Mie(m(i),x(i));
    Qabs(i) = A(6)*Area*I0;
    Qeff(i) = A(6);
end

end