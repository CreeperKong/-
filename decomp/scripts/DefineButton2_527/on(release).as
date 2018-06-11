on(release){
   if(_global.HP < 40)
   {
      Windows_mc._visible = true;
      Event_text = "婉儿：你看起来很累，请回去好好休息吧。";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "";
   }
   else if(_global.RL_Wan >= 100 and _global.IQ >= 100 and _global.EQ >= 100 and _global.EM_Wan >= 6)
   {
      _global.HP = _global.HP - 40;
      _global.RL_Wan = _global.RL_Wan + 25;
      _global.EM_Wan = _global.EM_Wan - 4;
      Windows_mc._visible = true;
      Event_text = "婉儿：公子，请紧紧的抱着我不要放开！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "好感度增加25，热情度消耗4点，体力减少40点";
   }
   else
   {
      Windows_mc._visible = true;
      Event_text = "婉儿：公子，请自重！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "需要好感度100点，知识100点，魅力100点，热情度6点";
   }
   Display_EM(_global.EM_Wan);
}
