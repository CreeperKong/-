on(release){
   if(_global.Hua >= 1)
   {
      _global.Hua = _global.Hua - 1;
      _global.RL_Bao = _global.RL_Bao + 2;
      _root.Windows_mc._visible = true;
      Event_text = "阿宝：谢谢你送这么好看的玫瑰花给我。";
      _root.Windows_mc.Event_txt.text = Event_text;
      _root.Windows_mc.Hint_txt.text = "阿宝对你的好感度增加2点";
      Hua_txt.text = _global.Hua;
   }
   else
   {
      _root.Windows_mc._visible = true;
      _root.Windows_mc.Event_txt.text = "好像没有玫瑰可送了，还是送点别的吧。";
      _root.Windows_mc.Hint_txt.text = "";
   }
}
