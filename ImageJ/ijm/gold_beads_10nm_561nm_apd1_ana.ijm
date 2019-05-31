run("Duplicate...", "title=work");
run("Grays");
run("Brightness/Contrast...");
run("Apply LUT");
run("Close");
run("Median...", "radius=2");
setAutoThreshold("Default dark");
setOption("BlackBackground", true);
run("Convert to Mask");
run("Watershed");
run("Convert to Mask");
run("Set Measurements...", "area center perimeter fit shape feret's display add redirect=None decimal=3");
run("Analyze Particles...", "size=20-Infinity pixel circularity=0.50-1.00 show=Overlay display exclude add in_situ");
selectWindow("gold_beads_10nm_561nm_apd1");
roiManager("Deselect");
roiManager("Show All with labels");