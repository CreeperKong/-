function Display_EM(EM)
{
   switch(EM)
   {
      case 0:
         EM0_mc._visible = true;
         EM1_mc._visible = false;
         EM2_mc._visible = false;
         EM3_mc._visible = false;
         EM4_mc._visible = false;
         EM5_mc._visible = false;
         break;
      case 2:
         EM0_mc._visible = false;
         EM1_mc._visible = true;
         EM2_mc._visible = false;
         EM3_mc._visible = false;
         EM4_mc._visible = false;
         EM5_mc._visible = false;
         break;
      case 4:
         EM0_mc._visible = false;
         EM1_mc._visible = false;
         EM2_mc._visible = true;
         EM3_mc._visible = false;
         EM4_mc._visible = false;
         EM5_mc._visible = false;
         break;
      case 6:
         EM0_mc._visible = false;
         EM1_mc._visible = false;
         EM2_mc._visible = false;
         EM3_mc._visible = true;
         EM4_mc._visible = false;
         EM5_mc._visible = false;
         break;
      case 8:
         EM0_mc._visible = false;
         EM1_mc._visible = false;
         EM2_mc._visible = false;
         EM3_mc._visible = false;
         EM4_mc._visible = true;
         EM5_mc._visible = false;
         break;
      case 10:
         EM0_mc._visible = false;
         EM1_mc._visible = false;
         EM2_mc._visible = false;
         EM3_mc._visible = false;
         EM4_mc._visible = false;
         EM5_mc._visible = true;
         break;
      default:
         EM0_mc._visible = true;
         EM1_mc._visible = false;
         EM2_mc._visible = false;
         EM3_mc._visible = false;
         EM4_mc._visible = false;
         EM5_mc._visible = false;
   }
}
_global.HP = 100;
_global.IQ = 10;
_global.EQ = 10;
_global.MN = 10;
_global.RL_Bao = 0;
_global.RL_Wen = 0;
_global.RL_Qian = 0;
_global.RL_Wan = 0;
_global.Day = 1;
_global.Sleep = true;
_global.Time_Wan = 1;
_global.Time_Bao = 1;
_global.Time_Qian = 1;
_global.Time_Wen = 1;
Day_mc.Day_txt.text = String(_global.Day);
_global.Hua = 0;
_global.Yanzhi = 0;
_global.Tanxiang = 0;
_global.Chai = 0;
_global.Yuzhuo = 0;
_global.Yemingzhu = 0;
_global.NameInput = "宁采臣";
_global.EM_Wen = 0;
_global.EM_Qian = 0;
_global.EM_Bao = 0;
_global.EM_Wan = 0;
_global.FoodTimes = 1;
