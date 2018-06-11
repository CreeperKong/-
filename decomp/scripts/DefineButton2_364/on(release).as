on(release){
   if(_global.HP < 40)
   {
      Windows_mc._visible = true;
      Event_text = "小雯：先生，你看起来很累，回去休息吧。";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "";
   }
   else if(_global.RL_Wen >= 60 and _global.IQ >= 100 and _global.EQ >= 30 and _global.EM_Wen >= 6)
   {
      _global.HP = _global.HP - 40;
      _global.RL_Wen = _global.RL_Wen + 25;
      _global.EM_Wen = _global.EM_Wen - 4;
      Windows_mc._visible = true;
      Event_text = "小雯：先生，请紧紧的抱着我不要放开！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "好感度加25，热情度消耗4点，体力值减40点";
   }
   else
   {
      Windows_mc._visible = true;
      Event_text = "小雯：先生，你...太无礼了！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "需要好感度60点，知识100点，魅力30点，热情度6点，加油啊！";
   }
   Display_EM(_global.EM_Wen);
}
