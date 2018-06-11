onClipEvent(enterFrame){
   TotalKB = _root.getBytesTotal() / 1000;
   LoadedKB = _root.getBytesLoaded() / 1000;
   LoadedPercent = int(LoadedKB / TotalKB * 100);
   _root.Percent_txt.text = LoadedPercent + "%";
   _root.Bar_mc._xscale = LoadedPercent;
}
