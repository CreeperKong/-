on(release){
   if(_global.Time_Bao == 1)
   {
      if(_global.HP < 15)
      {
         Windows_mc._visible = true;
         Event_text = "店小二：公子，看您很疲惫的样子，还是先回去休息吧。";
         Windows_mc.Event_txt.text = Event_text;
         Windows_mc.Hint_txt.text = "";
      }
      else
      {
         _global.HP = _global.HP - 15;
         gotoAndStop("客栈1");
         _global.Time_Bao = _global.Time_Bao + 1;
      }
   }
   else if(_global.Time_Bao == 2)
   {
      gotoAndStop("客栈");
   }
}
