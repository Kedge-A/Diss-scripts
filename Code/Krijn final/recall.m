opts = spreadsheetImportOptions('NumVariables',7);
opts.VariableTypes = {'char','double','double','char','double','double','double'};
recallVals = readcell('results.xlsx');
app.LayerDropDown.Value = recallVals(end,1);
layerComp = recallVals(end,1);
app.xSlider.Value = cell2mat(recallVals(end,2));
app.EditFieldx.Value = cell2mat(recallVals(end,2));
xLayer = cell2mat(recallVals(end,2));
app.ySlider.Value = cell2mat(recallVals(end,3));
app.EditFieldy.Value = cell2mat(recallVals(end,3));
yLayer = cell2mat(recallVals(end,3));
app.SubstrateDropDown.Value = recallVals(end,4);
subsComp = recallVals(end,4);
app.xSlider_2.Value = cell2mat(recallVals(end,5));
app.EditFieldx_2.Value = cell2mat(recallVals(end,5));
xSubs = cell2mat(recallVals(end,5));
app.ySlider_2.Value = cell2mat(recallVals(end,6));
app.EditFieldy_2.Value = cell2mat(recallVals(end,6));
ySubs = cell2mat(recallVals(end,6));
app.QWLengthnmSlider.Value = cell2mat(recallVals(end,7));
app.QWLengthnmEditField.Value = cell2mat(recallVals(end,7));
QWLength = cell2mat(recallVals(end,7));
run dataHandling.m
run button.m