on(release){
   if(_global.HP < 30)
   {
      Windows_mc._visible = true;
      Event_text = "阿宝：你看起来很累，回去好好休息吧。";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "";
   }
   else if(_global.RL_Bao >= 40 and _global.IQ >= 30 and _global.EQ >= 30)
   {
      _global.HP = _global.HP - 30;
      _global.RL_Bao = _global.RL_Bao + 15;
      _global.EM_Bao = _global.EM_Bao + 2;
      Windows_mc._visible = true;
      Event_text = "阿宝：拉着你的手，我好开心！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "好感度增加15点，热情度增加2点，体力值减少30点";
   }
   else
   {
      Windows_mc._visible = true;
      Event_text = "阿宝：不要这样!";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "需要好感度40点，知识30点，魅力30点";
   }
   Display_EM(_global.EM_Bao);
}
