on(release){
   if(_global.Tanxiang >= 1)
   {
      _global.Tanxiang = _global.Tanxiang - 1;
      _global.RL_Qian = _global.RL_Qian + 15;
      _root.Windows_mc._visible = true;
      Event_text = "小倩：公子，谢谢你送我的檀香。";
      _root.Windows_mc.Event_txt.text = Event_text;
      _root.Windows_mc.Hint_txt.text = "小倩对你的好感度增加15点";
      Xiang_txt.text = _global.Tanxiang;
   }
   else
   {
      _root.Windows_mc._visible = true;
      Event_text = "好像没有檀香可送了，我还是送点别的吧。";
      _root.Windows_mc.Event_txt.text = Event_text;
      _root.Windows_mc.Hint_txt.text = "";
   }
}
