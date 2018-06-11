on(release){
   _global.score = _global.score1 + _global.score2 + _global.score3 + _global.score4 + _global.score5 + _global.score6 + _global.score7 + _global.score8 + _global.score9 + _global.score10;
   if(_global.score <= 50)
   {
      gotoAndStop("孙山");
   }
   else if(_global.score == 60 or _global.score == 70)
   {
      _global.IQ = _global.IQ + 50;
      _global.EQ = _global.EQ + 50;
      _global.MN = _global.MN + 300;
      gotoAndStop("探花");
   }
   else if(_global.score == 80 or _global.score == 90)
   {
      _global.IQ = _global.IQ + 100;
      _global.EQ = _global.EQ + 100;
      _global.MN = _global.MN + 500;
      gotoAndStop("榜眼");
   }
   else if(_global.score == 100)
   {
      _global.IQ = _global.IQ + 200;
      _global.EQ = _global.EQ + 200;
      _global.MN = _global.MN + 1000;
      gotoAndStop("状元");
   }
}
