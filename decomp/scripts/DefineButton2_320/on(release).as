on(release){
   if(_global.HP >= 100 and _global.Sleep)
   {
      Windows_mc._visible = true;
      Event_text = "您确定要睡觉吗？如果确定，请再次按下睡觉按钮。";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "";
      _global.Sleep = false;
   }
   else
   {
      _global.HP = 100;
      _global.Day = _global.Day + 1;
      _global.FoodTimes = _global.Day;
      nextday_mc.gotoAndPlay(2);
      Windows_mc._visible = true;
      Event_text = "睡了个好觉:-)";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "体力值加满到100点";
      Day_mc.Day_txt.text = String(_global.Day);
      _global.Sleep = true;
      if(_global.Day == 45)
      {
         if(_global.IQ < 100 or _global.EQ < 50)
         {
            gotoAndStop("名落");
         }
         else
         {
            gotoAndStop(364);
         }
      }
      if(_global.Day == 10 and _global.RL_Wen > 0)
      {
         gotoAndStop(265);
      }
      if(_global.Day == 20 and _global.RL_Bao > 0)
      {
         gotoAndStop(267);
      }
      if(_global.Day == 40 and _global.RL_Qian > 0)
      {
         gotoAndStop(266);
      }
      if(_global.Day == 30 and _global.RL_Wan > 0)
      {
         gotoAndStop(264);
      }
      if(_global.Day == 51)
      {
         if(_global.RL_Wan <= 0 and _global.RL_Wen <= 0 and _global.RL_Bao <= 0 and _global.RL_Qian <= 0)
         {
            gotoAndStop(753);
         }
         else if(_global.RL_Wan < 200 and _global.RL_Wen < 200 and _global.RL_Bao < 200 and _global.RL_Qian < 200)
         {
            gotoAndStop(783);
         }
         else
         {
            gotoAndStop(411);
         }
      }
   }
}
