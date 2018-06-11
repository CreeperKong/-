on(release){
   if(_global.MN < 60)
   {
      Windows_mc._visible = true;
      Event_text = "侍者：公子，您请回，请凑足60两银子再来吧。";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "";
   }
   else if(_global.Time_Wan == 1)
   {
      if(_global.HP < 15)
      {
         Windows_mc._visible = true;
         Event_text = "侍者：公子，您面色苍白，还是先回去休息后再来吧。";
         Windows_mc.Event_txt.text = Event_text;
         Windows_mc.Hint_txt.text = "";
      }
      else
      {
         _global.HP = _global.HP - 15;
         _global.MN = MN - 60;
         Windows_mc.Event_txt.text = "侍者：公子，您今天气色不错，楼上进。";
         Windows_mc.Hint_txt.text = "花费银子60两，体力值减少15点";
         gotoAndStop("梨春院1");
         _global.Time_Wan = _global.Time_Wan + 1;
      }
   }
   else if(_global.Time_Wan == 2)
   {
      if(_global.HP < 15)
      {
         Windows_mc._visible = true;
         Event_text = "侍者：公子，您面色苍白，还是先回去休息后再来吧。";
         Windows_mc.Event_txt.text = Event_text;
         Windows_mc.Hint_txt.text = "";
      }
      else
      {
         _global.HP = _global.HP - 15;
         _global.MN = _global.MN - 60;
         Windows_mc.Event_txt.text = "侍者：公子，您今天气色不错，楼上进。";
         Windows_mc.Hint_txt.text = "花费银子60两，体力值减少15点";
         gotoAndStop("梨春院2");
         _global.Time_Wan = _global.Time_Wan + 1;
      }
   }
   else if(_global.HP < 15)
   {
      Windows_mc._visible = true;
      Event_text = "侍者：公子，您面色苍白，还是先回去休息后再来吧。";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "";
   }
   else
   {
      _global.MN = MN - 60;
      gotoAndStop("梨春院");
   }
}
