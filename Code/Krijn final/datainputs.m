% function outdatainputs(layerCompVal,subsCompVal)
%     Binary = evalin("base", 'Binary');
function outArray = datainputs(compVal)
    Binary = evalin("base", 'Binary');
    Ternary = evalin("base", 'Ternary');
    Quarternary = evalin("base", 'Quarternary');
    importCompounds = evalin("base", 'importCompounds');
    outArray = [];
    if (compVal<10)
        outArray(1,1) = double(cell2mat(Binary(compVal,2)));
        outArray(1,2) = double(cell2mat(Binary(compVal,3)));
        outArray(1,3) = double(cell2mat(Binary(compVal,4)));
        outArray(1,4) = double(cell2mat(Binary(compVal,6)));
        outArray(1,5) = double(cell2mat(Binary(compVal,7)));
        outArray(1,6) = double(cell2mat(Binary(compVal,8)));
        outArray(1,7) = double(cell2mat(Binary(compVal,11)));
        outArray(1,8) = double(cell2mat(Binary(compVal,12)));
        outArray(1,9) = double(cell2mat(Binary(compVal,13)));
        outArray(1,10) = double(cell2mat(Binary(compVal,15)));
        outArray(1,11) = double(cell2mat(Binary(compVal,16)));
        outArray(1,12) = double(cell2mat(Binary(compVal,17)));
    end
    if (9<compVal) && (compVal<24)
        ternCompVal1 = find(strcmp(importCompounds, Ternary((compVal-9),2)));
        ternCompVal2 = find(strcmp(importCompounds, Ternary((compVal-9),3)));
        outArray(1,:) = getTern(ternCompVal1,compVal,2);
        outArray(2,:) = getTern(ternCompVal2,compVal,3);        
    end
    if (compVal>23)
        quarCompVal1 = find(strcmp(importCompounds, Quarternary((compVal-23),3)));
        ternCompVal11 = find(strcmp(importCompounds, Ternary((quarCompVal1-9),2)));
        ternCompVal12 = find(strcmp(importCompounds, Ternary((quarCompVal1-9),3)));
        outArray(1,:) = getTern(ternCompVal11,quarCompVal1,2);
        outArray(2,:) = getTern(ternCompVal12,quarCompVal1,3);     
        quarCompVal2 = find(strcmp(importCompounds, Quarternary((compVal-23),4)));
        ternCompVal21 = find(strcmp(importCompounds, Ternary((quarCompVal2-9),2)));
        ternCompVal22 = find(strcmp(importCompounds, Ternary((quarCompVal2-9),3)));
        outArray(3,:) = getTern(ternCompVal21,quarCompVal2,2);
        outArray(4,:) = getTern(ternCompVal22,quarCompVal2,3);
        quarCompVal3 = find(strcmp(importCompounds, Quarternary((compVal-23),5)));
        ternCompVal31 = find(strcmp(importCompounds, Ternary((quarCompVal3-9),2)));
        ternCompVal32 = find(strcmp(importCompounds, Ternary((quarCompVal3-9),3)));
        outArray(5,:) = getTern(ternCompVal31,quarCompVal3,2);
        outArray(6,:) = getTern(ternCompVal32,quarCompVal3,3);
        if (Quarternary((compVal-23),2)=="x1xy1y")
            quarCompVal4 = find(strcmp(importCompounds, Quarternary((compVal-23),6)));
            ternCompVal41 = find(strcmp(importCompounds, Ternary((quarCompVal4-9),2)));
            ternCompVal42 = find(strcmp(importCompounds, Ternary((quarCompVal4-9),3)));
            outArray(7,:) = getTern(ternCompVal41,quarCompVal4,2);
            outArray(8,:) = getTern(ternCompVal42,quarCompVal4,3);     
        end        
    end    
    % assignin("base", "a", [evalin("base", 'a') double(cell2mat(Binary(layerCompVal,2)))]);
    % assignin("base", "C11", [evalin("base", 'C11') double(cell2mat(Binary(layerCompVal,3)))]);
    % assignin("base", "C12", [evalin("base", 'C12') double(cell2mat(Binary(layerCompVal,4)))]);
    % assignin("base", "Evav", [evalin("base", 'Evav') double(cell2mat(Binary(layerCompVal,6)))]);
    % assignin("base", "Delta0", [evalin("base", 'Delta0') double(cell2mat(Binary(layerCompVal,7)))]);
    % assignin("base", "Eg", [evalin("base", 'Eg') double(cell2mat(Binary(layerCompVal,8)))]);
    % assignin("base", "av", [evalin("base", 'av') double(cell2mat(Binary(layerCompVal,11)))]);
    % assignin("base", "ac", [evalin("base", 'ac') double(cell2mat(Binary(layerCompVal,12)))]);
    % assignin("base", "b", [evalin("base", 'b') double(cell2mat(Binary(layerCompVal,13)))]);
    % assignin("base", "a0", [evalin("base", 'a0') double(cell2mat(Binary(subsCompVal,2)))]);
    % assignin("base", "SubsEvav", [evalin("base", 'SubsEvav') double(cell2mat(Binary(subsCompVal,6)))]);
    % assignin("base", "SubsDelta0", [evalin("base", 'SubsDelta0') double(cell2mat(Binary(subsCompVal,7)))]);
    % assignin("base", "SubsEg", [evalin("base", 'SubsEg') double(cell2mat(Binary(subsCompVal,8)))]);
end