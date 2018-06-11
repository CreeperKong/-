on(release){
   if(_global.RL_Wen >= _global.RL_Bao and _global.RL_Wen >= _global.RL_Qian and _global.RL_Wen >= _global.RL_Wan)
   {
      gotoAndStop(673);
   }
   if(_global.RL_Bao >= _global.RL_Wen and _global.RL_Bao >= _global.RL_Qian and _global.RL_Bao >= _global.RL_Wan)
   {
      gotoAndStop(593);
   }
   if(_global.RL_Qian >= _global.RL_Wen and _global.RL_Qian >= _global.RL_Bao and _global.RL_Qian >= _global.RL_Wan)
   {
      gotoAndStop(513);
   }
   if(_global.RL_Wan >= _global.RL_Wen and _global.RL_Wan >= _global.RL_Qian and _global.RL_Wan >= _global.RL_Bao)
   {
      gotoAndStop(426);
   }
}
