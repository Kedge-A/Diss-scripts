
%%
% subsConstituents = getSubCompounds(subsComp);
% processedSubsConstituents = [];
% for v = 1:1:length(subsConstituents)
%     for n = 1:1:length(subsConstituents)
%         if mod(find(strcmp(importCompoundsStr, string(subsConstituents(n,v)))),1) == 0
%             processedSubsConstituents = [processedSubsConstituents subsConstituents(n,v)];
%         end
%     end
% end
% 
% if isempty(processedSubsConstituents)
%     processedSubsCompVal = subsCompVal;
% else
%     processedSubsCompVal = [];
% end
% 
% for v = 1:1:length(processedSubsConstituents)
%     processedSubsCompVal(1,v) = find(strcmp(importCompounds, processedSubsConstituents(v)));
% end
% 
% layerConstituents = getLayerCompounds(layerComp);
% processedLayerConstituents = [];
% for v = 1:1:length(layerConstituents)
%     for n = 1:1:length(layerConstituents)
%         if mod(find(strcmp(importCompoundsStr, string(layerConstituents(n,v)))),1) == 0
%             processedLayerConstituents = [processedLayerConstituents layerConstituents(n,v)];
%         end
%     end
% end
% 
% if isempty(processedLayerConstituents)
%     processedLayerCompVal = layerCompVal;
% else
%     processedLayerCompVal = [];
% end
% 
% for v = 1:1:length(processedLayerConstituents)
%     processedLayerCompVal(1,v) = find(strcmp(importCompounds, processedLayerConstituents(v)));
% end

%% 
if (layerCompVal<10)
    a = layerConstituentVals(1);
    C11 = layerConstituentVals(2);
    C12 = layerConstituentVals(3);
    Evav = layerConstituentVals(4);
    Delta0 = layerConstituentVals(5);
    Eg = layerConstituentVals(6);
    av = layerConstituentVals(7);
    ac = layerConstituentVals(8);
    b = layerConstituentVals(9);
    layerCondEffMass = layerConstituentVals(10);
    layerValEffMass = layerConstituentVals(11);
    layerValEffMassLH = layerConstituentVals(12);
end
if (subsCompVal<10)
    a0 = subsConstituentVals(1);
    SubsEvav = subsConstituentVals(4);
    SubsDelta0 = subsConstituentVals(5);
    SubsEg = subsConstituentVals(6);
    subsCondEffMass = subsConstituentVals(10);
    subsValEffMass = subsConstituentVals(11);
end