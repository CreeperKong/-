on(release){
   if(_global.HP < 30)
   {
      Windows_mc._visible = true;
      Event_text = "婉儿：你看起来很累，请回去好好休息吧。";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "";
   }
   else if(_global.RL_Wan >= 50 and _global.IQ >= 50 and _global.EQ >= 30)
   {
      _global.HP = _global.HP - 30;
      _global.RL_Wan = _global.RL_Wan + 15;
      _global.EM_Wan = _global.EM_Wan + 2;
      Windows_mc._visible = true;
      Event_text = "婉儿：公子，拉着你的手，我好开心！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "好感度增加15，热情度增加2点，体力减少30点";
   }
   else
   {
      Windows_mc._visible = true;
      Event_text = "婉儿：公子，不要这样!";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "需要好感度50点，知识50点，魅力30点";
   }
   Display_EM(_global.EM_Wan);
}
