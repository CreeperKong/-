on(release){
   if(_global.HP < 50)
   {
      Windows_mc._visible = true;
      Event_text = "婉儿：你看起来很累，请回去好好休息吧。";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "";
   }
   else if(_global.RL_Wan >= 200 and _global.IQ >= 200 and _global.EQ >= 200 and _global.EM_Wan >= 8)
   {
      _global.HP = _global.HP - 50;
      _global.RL_Wan = _global.RL_Wan + 35;
      _global.EM_Wan = _global.EM_Wan - 6;
      Windows_mc._visible = true;
      Event_text = "婉儿：公子，我们一生都要在一起！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "好感度增加35点，热情度消耗6点，体力减少50点";
   }
   else
   {
      Windows_mc._visible = true;
      Event_text = "婉儿：公子，你太无礼了！请回吧！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "需要好感度200点，知识200点，魅力200点，热情度8点";
   }
   Display_EM(_global.EM_Wan);
}
