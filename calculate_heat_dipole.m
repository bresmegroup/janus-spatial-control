%Dipole approximation for the heat absorption.

function Qabs = calculate_heat_dipole(I0,lambda,r)

ew = 1.333^2;
Area = pi*r^2;
Vol = 4/3*pi*r^3;

dielectric = dielectric_gold(lambda,r);

Qabs = 2*pi*I0*Vol./(lambda*sqrt(ew)).*(3*ew)^2./((2*ew+real(dielectric)).^2+imag(dielectric).^2).*imag(dielectric);

end