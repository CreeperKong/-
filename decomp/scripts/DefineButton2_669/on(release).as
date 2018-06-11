on(release){
   if(_global.MN >= 30)
   {
      _global.Tanxiang = _global.Tanxiang + 1;
      _global.MN = _global.MN - 30;
      Money_txt.text = _global.MN;
      Window_mc._visible = true;
      Event_text = "客官，这是您要的印度檀香。[您现有檀香" + String(_global.Tanxiang) + "柱]";
      Window_mc.Event_txt.text = Event_text;
   }
   else
   {
      Window_mc._visible = true;
      Event_text = "客官，您的钱不够，请选点别的吧。";
      Window_mc.Event_txt.text = Event_text;
   }
}
