on(release){
   if(_global.Tanxiang >= 1)
   {
      _global.Tanxiang = _global.Tanxiang - 1;
      Xiang_txt.text = _global.Tanxiang;
      _global.RL_Wen = _global.RL_Wen + 6;
      _root.Windows_mc._visible = true;
      Event_text = "小雯：先生，谢谢你送我的檀香。";
      _root.Windows_mc.Event_txt.text = Event_text;
      _root.Windows_mc.Hint_txt.text = "小雯对你的好感度增加6点";
   }
   else
   {
      _root.Windows_mc._visible = true;
      _root.Windows_mc.Event_txt.text = "好像没有檀香可送了，还是送点别的吧。";
      _root.Windows_mc.Hint_txt.text = "";
   }
}
