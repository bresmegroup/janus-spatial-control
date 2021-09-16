%The following calculation of the dielectric
%function follows the work of Derkachova et al.
%Plasmonics (2016) 11:941-951

%Takes the wavelength and radius of nanoparticle
%Returns the real and imaginary part of dielectric.

function dielectric = dielectric_gold(lambda,r)

energy = 1239.842./lambda;

e0 = 9.84;
wp = 9.01;

gamma = 0.072+0.33*1.4e6/r*4.136e-6;

Delta = 0.17;
A0 = 5.6;
wc = 2.4;

realF = e0 - wp^2./(energy.^2+gamma^2);
imagF = wp^2*gamma./(energy.*(energy.^2+gamma^2))+ A0./(1.+exp(-(energy-wc)/Delta));

dielectric = complex(realF,imagF);

end