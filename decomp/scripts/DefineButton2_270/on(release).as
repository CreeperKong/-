on(release){
   FullStatus_mc._visible = true;
   FullStatus_mc.Name_txt.text = _global.NameInput;
   FullStatus_mc.HP_txt.text = String(_global.HP);
   FullStatus_mc.IQ_txt.text = String(_global.IQ);
   FullStatus_mc.EQ_txt.text = String(_global.EQ);
   FullStatus_mc.MN_txt.text = String(_global.MN);
   FullStatus_mc.Wan_txt.text = String(_global.RL_Wan);
   FullStatus_mc.Wen_txt.text = String(_global.RL_Wen);
   FullStatus_mc.Qian_txt.text = String(_global.RL_Qian);
   FullStatus_mc.Bao_txt.text = String(_global.RL_Bao);
   if(_global.HP >= 0)
   {
      _global.Sleep = true;
   }
}
