on(release){
   if(_global.MN < 30)
   {
      Xiaoer_mc._visible = true;
      Xiaoer_mc.Xiaoer_txt.text = "小二：客官，您给的银子不够三十两，欢迎下次光临。";
      Xiaoer_mc.hint_txt.text = "";
   }
   else if(_global.HP == 100)
   {
      Xiaoer_mc._visible = true;
      Xiaoer_mc.Xiaoer_txt.text = "小二：客官，您的体力值已满，勿需用餐，要不来点酒水吧？";
      Xiaoer_mc.hint_txt.text = "";
   }
   else if(_global.FoodTimes - _global.Day > 2)
   {
      Xiaoer_mc._visible = true;
      Xiaoer_mc.Xiaoer_txt.text = "小二：客官，天色已晚，我们要打烊了，欢迎明天再光临！";
      Xiaoer_mc.hint_txt.text = "";
   }
   else
   {
      Xiaoer_mc._visible = true;
      _global.MN = _global.MN - 30;
      _global.HP = _global.HP + 20;
      _global.FoodTimes = _global.FoodTimes + 1;
      Blind_mc.gotoAndPlay(2);
      Xiaoer_mc.Xiaoer_txt.text = "小二：客官，您点的饭菜都齐了，请慢用。";
      Xiaoer_mc.hint_txt.text = "花费银子30两，体力增加20";
   }
}
