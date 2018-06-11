on(release){
   if(_global.Yemingzhu >= 1)
   {
      _global.Yemingzhu = _global.Yemingzhu - 1;
      _global.RL_Bao = _global.RL_Bao + 200;
      _root.Windows_mc._visible = true;
      Event_text = "阿宝：这样的礼物太贵重了。";
      _root.Windows_mc.Event_txt.text = Event_text;
      _root.Windows_mc.Hint_txt.text = "阿宝对你的好感度增加200点";
      Zhu_txt.text = _global.Yemingzhu;
   }
   else
   {
      _root.Windows_mc._visible = true;
      _root.Windows_mc.Event_txt.text = "好像没有夜明珠可送了，还是送点别的吧。";
      _root.Windows_mc.Hint_txt.text = "";
   }
}
