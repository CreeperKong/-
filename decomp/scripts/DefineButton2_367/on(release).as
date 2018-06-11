on(release){
   if(_global.HP < 30)
   {
      Windows_mc._visible = true;
      Event_text = "小雯：先生，你看起来很累，请回去好好休息吧。";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "";
   }
   else if(_global.RL_Wen >= 30 and _global.IQ >= 50 and _global.EQ >= 15)
   {
      _global.HP = _global.HP - 30;
      _global.RL_Wen = _global.RL_Wen + 15;
      _global.EM_Wen = _global.EM_Wen + 2;
      Windows_mc._visible = true;
      Event_text = "小雯：先生，拉着你的手，我好开心！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "好感度加15点，热情度加2点，体力值减30点";
   }
   else
   {
      Windows_mc._visible = true;
      Event_text = "小雯：不要这样！先生，我要回去看书了。";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "需要好感度30点，知识50点，魅力15点";
   }
   Display_EM(_global.EM_Wen);
}
