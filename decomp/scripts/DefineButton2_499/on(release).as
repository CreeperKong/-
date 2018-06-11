on(release){
   if(_global.Yuzhuo >= 1)
   {
      _global.Yuzhuo = _global.Yuzhuo - 1;
      _global.RL_Bao = _global.RL_Bao + 100;
      _root.Windows_mc._visible = true;
      Event_text = "阿宝：谢谢你送我的玉镯，我很喜欢。";
      _root.Windows_mc.Event_txt.text = Event_text;
      _root.Windows_mc.Hint_txt.text = "阿宝对你的好感度增加100点";
      Zhuo_txt.text = _global.Yuzhuo;
   }
   else
   {
      _root.Windows_mc._visible = true;
      _root.Windows_mc.Event_txt.text = "好像没有玉镯可送了，还是送点别的吧。";
      _root.Windows_mc.Hint_txt.text = "";
   }
}
