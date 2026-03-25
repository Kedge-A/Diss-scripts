function iterL = calcGS(mass,U)
    U = U*1.60218*10^-19;
    hbar = 1.054571817*10^-34;
    L = evalin("base", 'QWLength')*10^-9;
    k = pi/L;
    iter = 0;    
    lastL = 0;
    newL = L;
    M = 9.1093837*10^-31*mass;
    firstE = hbar^2*k^2/(M*2);
    for randomni = 1:3000
    % while newL > (lastL+lastL/10000) || newL < (lastL-lastL/10000)
        lastL = newL;
        E = hbar^2*k^2/(M*2);
        alpha = sqrt(2*M*(U-E)/(hbar^2));
        newL = L+2/alpha;
        k = pi/newL;
        iter = iter + 1;
        if abs(newL-lastL) < 1e-21
            break;
        end
    end
    E = hbar^2*k^2/(M*2);
    iterL(1) = iter;
    iterL(2) = real(newL*10^9);
    iterL(3) = real(E/(1.60218*10^-19));
    iterL(4) = real(firstE/(1.60218*10^-19));
end
if DeltaE_sh_hh < DeltaE_sh_lh
    usedMass = layerValEffMassLH;
else
    usedMass = layerValEffMass;
end
iterL = calcGS(usedMass,abs(DeltaEv));
valenceNoIter = iterL(1);
valenceEffL = iterL(2);
valenceEffE = iterL(3);
valFirstE = iterL(4);
iterL = calcGS(layerCondEffMass,abs(DeltaEc));
conductionNoIter = iterL(1);
conductionEffL = iterL(2);
conductionEffE = iterL(3);
condFirstE = iterL(4);
wavelength = 6.62607015*10^-34*299792458/((Ec+conductionEffE-Ev+valenceEffE)*(1.60218*10^-19))/10^-9;
run displayStuff.m