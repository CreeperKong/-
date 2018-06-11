on(release){
   if(_global.Chai >= 1)
   {
      _global.Chai = _global.Chai - 1;
      _global.RL_Qian = _global.RL_Qian + 20;
      _root.Windows_mc._visible = true;
      Event_text = "小倩：公子，谢谢你送我的钗子，我很喜欢。";
      _root.Windows_mc.Event_txt.text = Event_text;
      _root.Windows_mc.Hint_txt.text = "小倩对你的好感度增加20点";
      Chai_txt.text = _global.Chai;
   }
   else
   {
      _root.Windows_mc._visible = true;
      Event_text = "好像没有钗子可送了，我还是送点别的吧。";
      _root.Windows_mc.Event_txt.text = Event_text;
      _root.Windows_mc.Hint_txt.text = "";
   }
}
