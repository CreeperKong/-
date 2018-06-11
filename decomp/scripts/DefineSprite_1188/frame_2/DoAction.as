now = new Date();
tempTime = now.getTime();
txt = hasTime - int((tempTime - startTime) / 1000);
if(!txt)
{
   _root.gotoAndStop("over");
   this.stop();
}
