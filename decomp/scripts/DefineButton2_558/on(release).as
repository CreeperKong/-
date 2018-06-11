on(release){
   if(_global.HP < 30)
   {
      Windows_mc._visible = true;
      Event_text = "小倩：公子，你看起来很累，请回去好好休息吧。";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "";
   }
   else if(_global.RL_Qian >= 50 and _global.IQ >= 20 and _global.EQ >= 15)
   {
      _global.HP = _global.HP - 30;
      _global.RL_Qian = _global.RL_Qian + 15;
      _global.EM_Qian = _global.EM_Qian + 2;
      Windows_mc._visible = true;
      Event_text = "小倩：公子，拉着你的手，我心中感到一丝暖意！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "好感度增加15点，热情度增加2点，体力值减少30点";
   }
   else
   {
      Windows_mc._visible = true;
      Event_text = "小倩：公子，难道你不害怕吗？！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "需要好感度50点，知识20点，魅力15点";
   }
   Display_EM(_global.EM_Qian);
}
