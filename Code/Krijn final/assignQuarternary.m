function putout = ternCalcsLayer(q,w,x)
        layerConstituentVals = evalin("base",'layerConstituentVals');
        r = q+1;
        putout = x*layerConstituentVals(q,w)+(1-x)*layerConstituentVals(r,w);
    end
function output = quartCalcs(q,x,y)    
    output = ((x*(1-x)*(y*(ternCalcsLayer(1,q,x))+(1-y)*(ternCalcsLayer(3,q,x))))/(x*(1-x)+y*(1-y)))+((y*(1-y)*(x*(ternCalcsLayer(5,q,y))+(1-x)*(ternCalcsLayer(7,q,y))))/(x*(1-x)+y*(1-y)));
end
function putout = ternCalcsSubs(q,w,x)
        subsConstituentVals = evalin("base",'subsConstituentVals');
        r = q+1;
        putout = x*subsConstituentVals(q,w)+(1-x)*subsConstituentVals(r,w);
    end
function output = quartCalcsSubs(q,x,y)    
    output = ((x*(1-x)*(y*(ternCalcsSubs(1,q,x))+(1-y)*(ternCalcsSubs(3,q,x))))/(x*(1-x)+y*(1-y)))+((y*(1-y)*(x*(ternCalcsSubs(5,q,y))+(1-x)*(ternCalcsSubs(7,q,y))))/(x*(1-x)+y*(1-y)));
end
function putout = ternBowCalcsLayer(q,w,x,e)
        layerConstituentVals = evalin("base",'layerConstituentVals');
        r = q+1;
        t = q+e;
        a0 = evalin("base",'a0');
        if e == 2
            putout = x*layerConstituentVals(q,w)+(1-x)*layerConstituentVals(r,w)+(x*(x-1)*(3*(layerConstituentVals(q,1)-layerConstituentVals(r,1))*(layerConstituentVals(q,7)-layerConstituentVals(r,7))/a0));
        else
            putout = x*layerConstituentVals(q,w)+(1-x)*layerConstituentVals(r,w)+x*(x-1)*layerConstituentVals(t,10);
        end
    end
function output = quartBowCalcs(q,x,y,e)    
    output = ((x*(1-x)*(y*(ternBowCalcsLayer(1,q,x,e))+(1-y)*(ternBowCalcsLayer(3,q,x,e))))/(x*(1-x)+y*(1-y)))+((y*(1-y)*(x*(ternBowCalcsLayer(5,q,y,e))+(1-x)*(ternBowCalcsLayer(7,q,y,e))))/(x*(1-x)+y*(1-y)));
end
function putout = ternBowCalcsSubs(q,w,x,e)
        subsConstituentVals = evalin("base",'subsConstituentVals');
        r = q+1;
        t = q+e;
        a0 = evalin("base",'a0');
        if e == 2
            putout = x*subsConstituentVals(q,w)+(1-x)*subsConstituentVals(r,w)+(x*(x-1)*(3*(subsConstituentVals(q,1)-subsConstituentVals(r,1))*(subsConstituentVals(q,7)-subsConstituentVals(r,7))/a0));
        else
            putout = x*subsConstituentVals(q,w)+(1-x)*subsConstituentVals(r,w)+x*(x-1)*subsConstituentVals(t,10);
        end
    end
function output = quartBowCalcsSubs(q,x,y,e)    
    output = ((x*(1-x)*(y*(ternBowCalcsSubs(1,q,x,e))+(1-y)*(ternBowCalcsSubs(3,q,x,e))))/(x*(1-x)+y*(1-y)))+((y*(1-y)*(x*(ternBowCalcsSubs(5,q,y,e))+(1-x)*(ternBowCalcsSubs(7,q,y,e))))/(x*(1-x)+y*(1-y)));
end


if (subsCompVal>23)
    if (Quarternary((subsCompVal-23),2)=="xy1xy")
        a0 = xSubs*subsConstituentVals(1,1)+(ySubs)*subsConstituentVals(2,1)+(1-xSubs-ySubs)*subsConstituentVals(4,1);
        SubsEvav = xSubs*subsConstituentVals(1,4)+(ySubs)*subsConstituentVals(2,4)+(1-xSubs-ySubs)*subsConstituentVals(4,4)-(xSubs*ySubs*(3*(subsConstituentVals(1,1)-subsConstituentVals(2,1))*(subsConstituentVals(1,7)-subsConstituentVals(2,7))/a0))-(xSubs*(1-xSubs-ySubs)*(3*(subsConstituentVals(3,1)-subsConstituentVals(4,1))*(subsConstituentVals(3,7)-subsConstituentVals(4,7))/a0))-(ySubs*(1-xSubs-ySubs)*(3*(subsConstituentVals(5,1)-subsConstituentVals(6,1))*(subsConstituentVals(5,7)-subsConstituentVals(6,7))/a0));
        SubsDelta0 = xSubs*subsConstituentVals(1,5)+(ySubs)*subsConstituentVals(2,5)+(1-xSubs-ySubs)*subsConstituentVals(4,5)-xSubs*ySubs*subsConstituentVals(2,10)-xSubs*(1-xSubs-ySubs)*subsConstituentVals(4,10)-ySubs*(1-xSubs-ySubs)*subsConstituentVals(6,10);
        SubsEg = xSubs*subsConstituentVals(1,6)+(ySubs)*subsConstituentVals(2,6)+(1-xSubs-ySubs)*subsConstituentVals(4,6)-xSubs*ySubs*subsConstituentVals(1,10)-xSubs*(1-xSubs-ySubs)*subsConstituentVals(3,10)-ySubs*(1-xSubs-ySubs)*subsConstituentVals(5,10);
        subsCondEffMass = xSubs*subsConstituentVals(1,11)+(ySubs)*subsConstituentVals(2,11)+(1-xSubs-ySubs)*subsConstituentVals(4,11);
    end
    if (Quarternary((subsCompVal-23),2)=="x1xy1y")
        a0 = quartCalcsSubs(1,xSubs,ySubs);
        SubsEvav = quartBowCalcsSubs(4,xSubs,ySubs,2);
        SubsDelta0 = quartBowCalcsSubs(5,xSubs,ySubs,1);
        SubsEg = quartBowCalcsSubs(6,xSubs,ySubs,0);
        subsCondEffMass = quartCalcsSubs(11,xSubs,ySubs);
    end
end
if (layerCompVal>23)
    if (Quarternary((layerCompVal-23),2)=="xy1xy")
        a = xLayer*layerConstituentVals(1,1)+(yLayer)*layerConstituentVals(2,1)+(1-xLayer-yLayer)*layerConstituentVals(4,1);
        C11 = xLayer*layerConstituentVals(1,2)+(yLayer)*layerConstituentVals(2,2)+(1-xLayer-yLayer)*layerConstituentVals(4,2);
        C12 = xLayer*layerConstituentVals(1,3)+(yLayer)*layerConstituentVals(2,3)+(1-xLayer-yLayer)*layerConstituentVals(4,3);
        Evav = xLayer*layerConstituentVals(1,4)+(yLayer)*layerConstituentVals(2,4)+(1-xLayer-yLayer)*layerConstituentVals(4,4)-(xLayer*yLayer*(3*(layerConstituentVals(1,1)-layerConstituentVals(2,1))*(layerConstituentVals(1,7)-layerConstituentVals(2,7))/a0))-(xLayer*(1-xLayer-yLayer)*(3*(layerConstituentVals(3,1)-layerConstituentVals(4,1))*(layerConstituentVals(3,7)-layerConstituentVals(4,7))/a0))-(yLayer*(1-xLayer-yLayer)*(3*(layerConstituentVals(5,1)-layerConstituentVals(6,1))*(layerConstituentVals(5,7)-layerConstituentVals(6,7))/a0));
        Delta0 = xLayer*layerConstituentVals(1,5)+(yLayer)*layerConstituentVals(2,5)+(1-xLayer-yLayer)*layerConstituentVals(4,5)-xLayer*yLayer*layerConstituentVals(2,10)-xLayer*(1-xLayer-yLayer)*layerConstituentVals(4,10)-yLayer*(1-xLayer-yLayer)*layerConstituentVals(6,10);
        Eg = xLayer*layerConstituentVals(1,6)+(yLayer)*layerConstituentVals(2,6)+(1-xLayer-yLayer)*layerConstituentVals(4,6)-xLayer*yLayer*layerConstituentVals(1,10)-xLayer*(1-xLayer-yLayer)*layerConstituentVals(3,10)-yLayer*(1-xLayer-yLayer)*layerConstituentVals(5,10);
        av = xLayer*layerConstituentVals(1,7)+(yLayer)*layerConstituentVals(2,7)+(1-xLayer-yLayer)*layerConstituentVals(4,7);
        ac = xLayer*layerConstituentVals(1,8)+(yLayer)*layerConstituentVals(2,8)+(1-xLayer-yLayer)*layerConstituentVals(4,8);
        b = xLayer*layerConstituentVals(1,9)+(yLayer)*layerConstituentVals(2,9)+(1-xLayer-yLayer)*layerConstituentVals(4,9);
        layerCondEffMass = xLayer*layerConstituentVals(1,11)+(yLayer)*layerConstituentVals(2,11)+(1-xLayer-yLayer)*layerConstituentVals(4,11);
        layerValEffMass = xLayer*layerConstituentVals(1,12)+(yLayer)*layerConstituentVals(2,12)+(1-xLayer-yLayer)*layerConstituentVals(4,12);
        layerValEffMassLH = xLayer*layerConstituentVals(1,13)+(yLayer)*layerConstituentVals(2,13)+(1-xLayer-yLayer)*layerConstituentVals(4,13);

    end
    if (Quarternary((layerCompVal-23),2)=="x1xy1y")
        a = quartCalcs(1,xLayer,yLayer);
        C11 = quartCalcs(2,xLayer,yLayer);
        C12 = quartCalcs(3,xLayer,yLayer);
        Evav = quartBowCalcs(4,xLayer,yLayer,2);
        Delta0 = quartBowCalcs(5,xLayer,yLayer,1);
        Eg = quartBowCalcs(6,xLayer,yLayer,0);
        av = quartCalcs(7,xLayer,yLayer);
        ac = quartCalcs(8,xLayer,yLayer);
        b = quartCalcs(9,xLayer,yLayer);
        layerCondEffMass = quartCalcs(11,xLayer,yLayer);
        layerValEffMass = quartCalcs(12,xLayer,yLayer);
        layerValEffMassLH = quartCalcs(13,xLayer,yLayer);
    end
end

