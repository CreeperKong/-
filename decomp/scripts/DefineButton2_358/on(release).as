on(release){
   if(_global.HP < 15)
   {
      Windows_mc._visible = true;
      Event_text = "小雯：先生，你看起来很累，回去休息吧。";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "";
   }
   else
   {
      _global.HP = _global.HP - 15;
      Windows_mc.Event_txt.text = "和小雯聊天";
      Windows_mc.Hint_txt.text = "体力值减少15点";
      gotoAndStop(340);
   }
}
