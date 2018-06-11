on(release){
   if(_global.Chai >= 1)
   {
      _global.Chai = _global.Chai - 1;
      Chai_txt.text = _global.Chai;
      _global.RL_Wen = _global.RL_Wen + 20;
      _root.Windows_mc._visible = true;
      Event_text = "小雯：先生，谢谢你送我的钗子，我很喜欢。";
      _root.Windows_mc.Event_txt.text = Event_text;
      _root.Windows_mc.Hint_txt.text = "小雯对你的好感度增加20点";
   }
   else
   {
      _root.Windows_mc._visible = true;
      _root.Windows_mc.Event_txt.text = "好像没有钗子可送了，还是送点别的吧。";
      _root.Windows_mc.Hint_txt.text = "";
   }
}
