on(release){
   if(_global.MN >= 100)
   {
      _global.Chai = _global.Chai + 1;
      _global.MN = _global.MN - 100;
      Money_txt.text = _global.MN;
      Window_mc._visible = true;
      Event_text = "客官，这是您要的金钗。[您现有金钗" + String(_global.Chai) + "个]";
      Window_mc.Event_txt.text = Event_text;
   }
   else
   {
      Window_mc._visible = true;
      Event_text = "客官，您的钱不够，请选点别的吧。";
      Window_mc.Event_txt.text = Event_text;
   }
}
