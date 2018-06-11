on(release){
   if(_global.HP >= 0)
   {
      _global.Sleep = true;
   }
   if(_global.HP < 40)
   {
      Windows_mc._visible = true;
      Event_text = "您的体力不够，请休息！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "";
   }
   else if(_global.IQ < 100)
   {
      Windows_mc._visible = true;
      Event_text = "您的知识及综合水平还不够，请继续努力！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "";
   }
   else if(_global.EQ < 50)
   {
      Windows_mc._visible = true;
      Event_text = "您的魅力及审美水平还不够，请继续努力！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "";
   }
   else if(_global.EQ >= 50 and _global.EQ <= 100)
   {
      _global.MN = _global.MN + 30;
      _global.EQ = _global.EQ + 10;
      _global.HP = _global.HP - 40;
      Windows_mc._visible = true;
      Blind_mc.gotoAndPlay(2);
      Event_text = "画了一幅习作（初级水平），装裱后被人买去。";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "得银子30两，魅力值增加10点，体力值减少40点";
   }
   else if(_global.EQ >= 101 and _global.EQ <= 200)
   {
      _global.MN = _global.MN + 60;
      _global.EQ = _global.EQ + 10;
      _global.HP = _global.HP - 40;
      Windows_mc._visible = true;
      Event_text = "画了一首花鸟虫鱼（中级水平），装裱后被人买去。";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "得银子60两，魅力值增加10点，体力值减少40点";
   }
   else if(_global.EQ >= 201)
   {
      _global.MN = _global.MN + 120;
      _global.EQ = _global.EQ + 10;
      _global.HP = _global.HP - 40;
      Windows_mc._visible = true;
      Event_text = "画了一首山水丹青（高级水平），装裱后被人买去。";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "得银子120两，魅力值增加10点，体力值减少40点";
   }
}
