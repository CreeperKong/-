on(release){
   if(_global.Yuzhuo >= 1)
   {
      _global.Yuzhuo = _global.Yuzhuo - 1;
      _global.RL_Wan = _global.RL_Wan + 100;
      _root.Windows_mc._visible = true;
      Event_text = "婉儿：公子，谢谢你送我的玉镯，我很喜欢。";
      _root.Windows_mc.Event_txt.text = Event_text;
      _root.Windows_mc.Hint_txt.text = "婉儿对你的好感度增加100点";
      Zhuo_txt.text = _global.Yuzhuo;
   }
   else
   {
      _root.Windows_mc._visible = true;
      Event_text = "好像没有玉镯可送了，我还是送点别的吧。";
      _root.Windows_mc.Event_txt.text = Event_text;
      _root.Windows_mc.Hint_txt.text = "";
   }
}
