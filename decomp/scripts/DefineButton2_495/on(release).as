on(release){
   if(_global.Tanxiang >= 1)
   {
      _global.Tanxiang = _global.Tanxiang - 1;
      _global.RL_Bao = _global.RL_Bao + 6;
      _root.Windows_mc._visible = true;
      Event_text = "阿宝：谢谢你送我的檀香。";
      _root.Windows_mc.Event_txt.text = Event_text;
      _root.Windows_mc.Hint_txt.text = "阿宝对你的好感度增加6点";
      Xiang_txt.text = _global.Tanxiang;
   }
   else
   {
      _root.Windows_mc._visible = true;
      _root.Windows_mc.Event_txt.text = "好像没有檀香可送了，还是送点别的吧。";
      _root.Windows_mc.Hint_txt.text = "";
   }
}
