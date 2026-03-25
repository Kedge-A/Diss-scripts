pngOut = sprintf("graphics\\%sx%dy%d%sx%dy%d%d.png",layerComp{1},xLayer,yLayer,subsComp,xSubs,ySubs,QWLength);
exportgraphics(app.UIFigure,pngOut);
pngOut = sprintf("graphics\\APP%sx%dy%d%sx%dy%d%d.png",layerComp{1},xLayer,yLayer,subsComp,xSubs,ySubs,QWLength);
exportapp(app.UIFigure,pngOut);