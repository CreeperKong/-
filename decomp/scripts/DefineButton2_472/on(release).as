on(release){
   if(_global.MN < 10)
   {
      Xiaoer_mc._visible = true;
      Xiaoer_mc.Xiaoer_txt.text = "小二：客官，您给的银子不够十两，欢迎下次光临。";
      Xiaoer_mc.hint_txt.text = "";
   }
   else
   {
      Xiaoer_mc._visible = true;
      _global.MN = _global.MN - 10;
      _global.EQ = _global.EQ + 10;
      Blind_mc.gotoAndPlay(2);
      Xiaoer_mc.Xiaoer_txt.text = "小二：客官，您要的酒来了，请慢用。";
      Xiaoer_mc.hint_txt.text = "花费银子10两，魅力增加10";
   }
}
