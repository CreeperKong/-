on(release){
   if(_global.MN >= 1000)
   {
      _global.Yemingzhu = _global.Yemingzhu + 1;
      _global.MN = _global.MN - 1000;
      Money_txt.text = _global.MN;
      Window_mc._visible = true;
      Event_text = "客官，这是您要的夜明珠。[您现有夜明珠" + String(_global.Yemingzhu) + "个]";
      Window_mc.Event_txt.text = Event_text;
   }
   else
   {
      Window_mc._visible = true;
      Event_text = "客官，您的钱不够，请选点别的吧。";
      Window_mc.Event_txt.text = Event_text;
   }
}
