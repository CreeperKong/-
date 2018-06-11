on(release){
   if(_global.HP < 15)
   {
      Windows_mc._visible = true;
      Event_text = "婉儿：你看起来很累，请回去好好休息吧。";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "";
   }
   else
   {
      _global.HP = _global.HP - 15;
      Windows_mc.Event_txt.text = "和婉儿聊天";
      Windows_mc.Hint_txt.text = "体力值减少15点";
      gotoAndStop(292);
   }
}
