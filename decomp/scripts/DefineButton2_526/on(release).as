on(release){
   if(_global.RL_Wan > -10)
   {
      Windows_mc._visible = true;
      Present_mc._visible = true;
      Event_text = "婉儿：你要送我什么礼物啊？";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "";
   }
   else
   {
      Windows_mc._visible = true;
      Event_text = "婉儿：公子，我不能接受你的东西！";
      Windows_mc.Event_txt.text = Event_text;
      Windows_mc.Hint_txt.text = "";
   }
}
