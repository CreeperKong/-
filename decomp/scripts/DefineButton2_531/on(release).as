on(release){
   if(_global.Yanzhi >= 1)
   {
      _global.Yanzhi = _global.Yanzhi - 1;
      _global.RL_Wan = _global.RL_Wan + 10;
      _root.Windows_mc._visible = true;
      Event_text = "婉儿：公子，谢谢你送我的胭脂。";
      _root.Windows_mc.Event_txt.text = Event_text;
      _root.Windows_mc.Hint_txt.text = "婉儿对你的好感度增加10点";
      Zhi_txt.text = _global.Yanzhi;
   }
   else
   {
      _root.Windows_mc._visible = true;
      Event_text = "好像没有胭脂可送了，我还是送点别的吧。";
      _root.Windows_mc.Event_txt.text = Event_text;
      _root.Windows_mc.Hint_txt.text = "";
   }
}
