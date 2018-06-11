on(release){
   if(_global.MN >= 50)
   {
      _global.Yanzhi = _global.Yanzhi + 1;
      _global.MN = _global.MN - 50;
      Money_txt.text = _global.MN;
      Window_mc._visible = true;
      Event_text = "客官，这是您要的金花胭脂膏。[您现有胭脂" + String(_global.Yanzhi) + "盒]";
      Window_mc.Event_txt.text = Event_text;
   }
   else
   {
      Window_mc._visible = true;
      Event_text = "客官，您的钱不够，请选点别的吧。";
      Window_mc.Event_txt.text = Event_text;
   }
}
