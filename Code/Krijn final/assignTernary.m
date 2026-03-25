if ((9<subsCompVal) && (subsCompVal<24))   
    a0 = xSubs*subsConstituentVals(1,1)+(1-xSubs)*subsConstituentVals(2,1);
    SubsEvav = xSubs*subsConstituentVals(1,4)+(1-xSubs)*subsConstituentVals(2,4)+(xSubs*(xSubs-1)*(3*(subsConstituentVals(1,1)-subsConstituentVals(2,1))*(subsConstituentVals(1,7)-subsConstituentVals(2,7))/a0));
    SubsDelta0 = xSubs*subsConstituentVals(1,5)+(1-xSubs)*subsConstituentVals(2,5)+xSubs*(xSubs-1)*subsConstituentVals(2,10);
    SubsEg = xSubs*subsConstituentVals(1,6)+(1-xSubs)*subsConstituentVals(2,6)+xSubs*(xSubs-1)*subsConstituentVals(1,10);
    subsCondEffMass = xSubs*subsConstituentVals(1,11)+(1-xSubs)*subsConstituentVals(2,11);
    subsValEffMass = xSubs*subsConstituentVals(1,12)+(1-xSubs)*subsConstituentVals(2,12);
    subsValEffMassLH = xSubs*subsConstituentVals(1,13)+(1-xSubs)*subsConstituentVals(2,13);
end
if ((9<layerCompVal) && (layerCompVal<24))
    a = xLayer*layerConstituentVals(1,1)+(1-xLayer)*layerConstituentVals(2,1);
    C11 = xLayer*layerConstituentVals(1,2)+(1-xLayer)*layerConstituentVals(2,2);
    C12 = xLayer*layerConstituentVals(1,3)+(1-xLayer)*layerConstituentVals(2,3);
    Evav = xLayer*layerConstituentVals(1,4)+(1-xLayer)*layerConstituentVals(2,4)+(xLayer*(xLayer-1)*(3*(layerConstituentVals(1,1)-layerConstituentVals(2,1))*(layerConstituentVals(1,7)-layerConstituentVals(2,7))/a0));
    Delta0 = xLayer*layerConstituentVals(1,5)+(1-xLayer)*layerConstituentVals(2,5)+xLayer*(xLayer-1)*layerConstituentVals(2,10);
    Eg = xLayer*layerConstituentVals(1,6)+(1-xLayer)*layerConstituentVals(2,6)+xLayer*(xLayer-1)*layerConstituentVals(1,10);
    av = xLayer*layerConstituentVals(1,7)+(1-xLayer)*layerConstituentVals(2,7);
    ac = xLayer*layerConstituentVals(1,8)+(1-xLayer)*layerConstituentVals(2,8);
    b = xLayer*layerConstituentVals(1,9)+(1-xLayer)*layerConstituentVals(2,9);
    layerCondEffMass = xLayer*layerConstituentVals(1,11)+(1-xLayer)*layerConstituentVals(2,11);
    layerValEffMass = xLayer*layerConstituentVals(1,12)+(1-xLayer)*layerConstituentVals(2,12);
    layerValEffMassLH = xLayer*layerConstituentVals(1,13)+(1-xLayer)*layerConstituentVals(2,13);
end