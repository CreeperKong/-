on(release){
   if(_global.MN >= 500)
   {
      _global.Yuzhuo = _global.Yuzhuo + 1;
      _global.MN = _global.MN - 500;
      Money_txt.text = _global.MN;
      Window_mc._visible = true;
      Event_text = "客官，这是您要的极品玉镯。[您现有玉镯" + String(_global.Yuzhuo) + "枚]";
      Window_mc.Event_txt.text = Event_text;
   }
   else
   {
      Window_mc._visible = true;
      Event_text = "客官，您的钱不够，请选点别的吧。";
      Window_mc.Event_txt.text = Event_text;
   }
}
