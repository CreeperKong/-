on(release){
   if(_global.Tanxiang >= 1)
   {
      _global.Tanxiang = _global.Tanxiang - 1;
      _global.RL_Wan = _global.RL_Wan + 6;
      _root.Windows_mc._visible = true;
      Event_text = "婉儿：公子，谢谢你送我的檀香。";
      _root.Windows_mc.Event_txt.text = Event_text;
      _root.Windows_mc.Hint_txt.text = "婉儿对你的好感度增加6点";
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
