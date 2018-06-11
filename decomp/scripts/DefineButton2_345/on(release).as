on(release){
   if(_global.HP < 30)
   {
      Windows_mc._visible = true;
      Event_text = "您的体力不够，还是回去休息吧。";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "";
   }
   else
   {
      _global.HP = _global.HP - 30;
      _global.MN = _global.MN + 10;
      _global.IQ = _global.IQ + 10;
      Windows_mc._visible = true;
      Blind_mc.gotoAndPlay(2);
      Event_text = "教书一节课。";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "得银子10两，知识加10点，体力减30点";
   }
}
