on(release){
   if(_global.HP < 50)
   {
      Windows_mc._visible = true;
      Event_text = "阿宝：你看起来很累，回去好好休息吧。";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "";
   }
   else if(_global.RL_Bao >= 160 and _global.IQ >= 150 and _global.EQ >= 120 and _global.EM_Bao >= 8)
   {
      _global.HP = _global.HP - 50;
      _global.RL_Bao = _global.RL_Bao + 35;
      _global.EM_Bao = _global.EM_Bao - 6;
      Windows_mc._visible = true;
      Event_text = "阿宝：我们一生都要在一起！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "好感度增加35点，热情度消耗6点，体力值减少50点";
   }
   else
   {
      Windows_mc._visible = true;
      Event_text = "阿宝：你太无礼了！请回吧！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "需要好感度160点，知识150点，魅力120点，热情度8点，加油啊！";
   }
   Display_EM(_global.EM_Bao);
}
