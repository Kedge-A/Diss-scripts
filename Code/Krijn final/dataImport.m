
%Variables inside 'xxVar' are not obtained via calculation but from csv
%depending on the compounds used in the semiconductor:
%layerVar = [a, C11, C12, Evav, delta0, Eg(gamma), av, ac(gamma), b, a0];
%bulkVar = [Evav, delta0, Eg(gamma)];


Binary = readcell("Binary.csv");
Ternary = readcell("Ternary.csv");
Quarternary = readcell("Quartenary.csv");
importCompounds = [Binary(:,1); Ternary(:,1); Quarternary(:,1)]';
importCompoundsStr = string(importCompounds);