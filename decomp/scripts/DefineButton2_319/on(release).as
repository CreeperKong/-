on(release){
   if(_global.HP >= 0)
   {
      _global.Sleep = true;
   }
   if(_global.Time_Wen == 1)
   {
      if(_global.HP < 15)
      {
         Windows_mc._visible = true;
         Event_text = "您的体力不够，请休息！";
         Windows_mc.Event_txt.text = Event_text;
         Windows_mc.Hint_txt.text = "";
      }
      else
      {
         _global.HP = _global.HP - 15;
         gotoAndStop("学堂1");
         _global.Time_Wen = _global.Time_Wen + 1;
      }
   }
   else if(_global.Time_Wen == 2)
   {
      gotoAndStop("学堂");
   }
}
