on(release){
   if(_global.HP < 40)
   {
      Windows_mc._visible = true;
      Event_text = "阿宝：你看起来很累，回去好好休息吧。";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "";
   }
   else if(_global.RL_Bao >= 80 and _global.IQ >= 80 and _global.EQ >= 60 and _global.EM_Bao >= 6)
   {
      _global.HP = _global.HP - 40;
      _global.RL_Bao = _global.RL_Bao + 25;
      _global.EM_Bao = _global.EM_Bao - 4;
      Windows_mc._visible = true;
      Event_text = "阿宝：请紧紧的抱着我不要放开！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "好感度增加25点，热情度消耗4点，体力值减少40点";
   }
   else
   {
      Windows_mc._visible = true;
      Event_text = "阿宝：请自重！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "需要好感度80点，知识80点，魅力60点，热情度6点，加油啊！";
   }
   Display_EM(_global.EM_Bao);
}
