clear;
run dataImport.m;
close all force;
app = KrijnApp; %run app
app.LayerDropDown.Items = importCompoundsStr;          % set dropdown options
app.SubstrateDropDown.Items = importCompoundsStr;

layerComp = app.LayerDropDown.Value;
subsComp = app.SubstrateDropDown.Value;
QWLength = app.QWLengthnmEditField.Value;
layerCompVal = 1;
subsCompVal = 1;
xLayer = 0;
yLayer = 0;
xSubs = 0;
ySubs = 0;
run dataHandling.m
run button.m