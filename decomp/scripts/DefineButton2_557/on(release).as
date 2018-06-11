on(release){
   if(_global.HP < 40)
   {
      Windows_mc._visible = true;
      Event_text = "小倩：公子，你看起来很累，回去休息吧。";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "";
   }
   else if(_global.RL_Qian >= 100 and _global.IQ >= 50 and _global.EQ >= 30 and _global.EM_Qian >= 6)
   {
      _global.HP = _global.HP - 40;
      _global.RL_Qian = _global.RL_Qian + 25;
      _global.EM_Qian = _global.EM_Qian - 4;
      Windows_mc._visible = true;
      Event_text = "小倩：公子，请紧紧的抱着我不要放开！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "好感度增加25点，热情度消耗4点，体力值减少40点";
   }
   else
   {
      Windows_mc._visible = true;
      Event_text = "小倩：公子，难道你不害怕吗？！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "需要好感度100点，知识50点，魅力30点，热情度6点";
   }
   Display_EM(_global.EM_Qian);
}
