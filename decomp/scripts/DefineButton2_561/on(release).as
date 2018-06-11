on(release){
   if(_global.Yanzhi >= 1)
   {
      _global.Yanzhi = _global.Yanzhi - 1;
      _global.RL_Qian = _global.RL_Qian + 10;
      _root.Windows_mc._visible = true;
      Event_text = "小倩：公子，谢谢你送我的胭脂。";
      _root.Windows_mc.Event_txt.text = Event_text;
      _root.Windows_mc.Hint_txt.text = "小倩对你的好感度增加10点";
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
