on(release){
   if(_global.HP < 50)
   {
      Windows_mc._visible = true;
      Event_text = "小雯：先生，你看起来很累，回去好好休息吧。";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "";
   }
   else if(_global.RL_Wen >= 100 and _global.IQ >= 200 and _global.EQ >= 60 and _global.EM_Wen >= 8)
   {
      _global.HP = _global.HP - 50;
      _global.RL_Wen = _global.RL_Wen + 35;
      _global.EM_Wen = _global.EM_Wen - 6;
      Windows_mc._visible = true;
      Event_text = "小雯：先生，我们一生一世都要在一起！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "好感度加35点，热情度消耗6点，体力值减50点";
   }
   else
   {
      Windows_mc._visible = true;
      Event_text = "小雯：先生，你...没想到你是这样的人！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "需要好感度100点，知识200点，魅力60点，热情度8点，加油啊！";
   }
   Display_EM(_global.EM_Wen);
}
