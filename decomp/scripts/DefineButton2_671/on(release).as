on(release){
   if(_global.MN >= 10)
   {
      _global.Hua = _global.Hua + 1;
      _global.MN = _global.MN - 10;
      Money_txt.text = _global.MN;
      Window_mc._visible = true;
      Event_text = "客官，这是您要的玫瑰花。[您现有玫瑰花" + String(_global.Hua) + "朵]";
      Window_mc.Event_txt.text = Event_text;
   }
   else
   {
      Window_mc._visible = true;
      Event_text = "客官，您的钱不够，请选点别的吧。";
      Window_mc.Event_txt.text = Event_text;
   }
}
