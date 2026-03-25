if ((9<subsCompVal) && (subsCompVal<24))
    run assignTernary.m
end
if (subsCompVal<10)
    run assignBinary.m
end
if (subsCompVal>23)
    run assignQuarternary.m
end
if ((9<layerCompVal) && (layerCompVal<24)) 
    run assignTernary.m
end
if (layerCompVal<10)
    run assignBinary.m
end
if (layerCompVal>23)
    run assignQuarternary.m
end

%%
a_par = a0;
D001 = 2*C12/C11;
a_perp = a*(1-D001*((a_par/a)-1));
epsilon_par = (a_par/a)-1;
epsilon_perp = (a_perp/a)-1;
DeltaE_hy_v = av*(2*epsilon_par + epsilon_perp);
DeltaE_hy_c = ac*(2*epsilon_par + epsilon_perp);
deltaE001_sh = 2*b*(epsilon_perp - epsilon_par);
DeltaE_sh_hh = -0.5 * deltaE001_sh;
DeltaE_sh_lh = -0.5 * Delta0 + 0.25 * deltaE001_sh - 0.5*(Delta0^2 + Delta0*deltaE001_sh + (9/4)*deltaE001_sh^2)^(0.5);
% DeltaE_sh_so
Ev = Evav + Delta0/3 + DeltaE_hy_v + max(DeltaE_sh_hh,DeltaE_sh_lh);
Ec = Evav + Delta0/3 + Eg + DeltaE_hy_c;
SubsEv = SubsEvav + SubsDelta0/3;
SubsEc = SubsEvav + SubsDelta0/3 + SubsEg;
DeltaEv = (Ev-SubsEv);
DeltaEc = (Ec-SubsEc);
run groundState.m