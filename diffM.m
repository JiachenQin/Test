function Dz = diffM(hz,z)

for ii = 1:length(z)
    Dz(ii) = diff( hz,z(ii) );
end