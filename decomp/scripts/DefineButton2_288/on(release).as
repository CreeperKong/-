on(release){
   if(_global.HP >= 0)
   {
      _global.Sleep = true;
   }
   if(_global.HP < 25)
   {
      Windows_mc._visible = true;
      Event_text = "您的体力不够，请休息！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "";
   }
   else if(_global.IQ < 50)
   {
      Windows_mc._visible = true;
      Event_text = "您的知识水平还不够，请继续努力！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "";
   }
   else if(_global.IQ >= 50 and _global.IQ <= 100)
   {
      _global.MN = _global.MN + 15;
      _global.IQ = _global.IQ + 5;
      _global.HP = _global.HP - 25;
      Windows_mc._visible = true;
      Blind_mc.gotoAndPlay(2);
      Event_text = "作诗一首并书写装裱（初级水平），被人赏识买去。";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "得银子15两，知识增加5点，体力减少25点";
   }
   else if(_global.IQ >= 101 and _global.IQ <= 200)
   {
      _global.MN = _global.MN + 30;
      _global.IQ = _global.IQ + 5;
      _global.HP = _global.HP - 25;
      Windows_mc._visible = true;
      Event_text = "作诗一首并书写装裱（中级水平），被人赏识买去。";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "得银子30两，知识增加5点，体力减少25点";
   }
   else if(_global.IQ >= 201)
   {
      _global.MN = _global.MN + 60;
      _global.IQ = _global.IQ + 5;
      _global.HP = _global.HP - 25;
      Windows_mc._visible = true;
      Event_text = "作诗一首并书写装裱（高级水平），被人赏识买去。";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "得银子60两，知识增加5点，体力减少25点";
   }
}
