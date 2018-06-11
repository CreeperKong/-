on(release){
   if(_global.HP < 50)
   {
      Windows_mc._visible = true;
      Event_text = "小倩：公子，你看起来很累，回去好好休息吧。";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "";
   }
   else if(_global.RL_Qian >= 200 and _global.IQ >= 100 and _global.EQ >= 60 and _global.EM_Qian >= 8)
   {
      _global.HP = _global.HP - 50;
      _global.RL_Qian = _global.RL_Qian + 35;
      _global.EM_Qian = _global.EM_Qian - 6;
      Windows_mc._visible = true;
      Event_text = "小倩：公子，我们一生都要在一起！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "好感度增加35点，热情度消耗6点，体力值减少50点";
   }
   else
   {
      Windows_mc._visible = true;
      Event_text = "小倩：公子，难道你不害怕吗？！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "需要好感度200点，知识100点，魅力60点，热情度8点";
   }
   Display_EM(_global.EM_Qian);
}
