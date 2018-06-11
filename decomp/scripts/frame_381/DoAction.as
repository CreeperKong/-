stop();
f = false;
_root.onEnterFrame = function()
{
   b = 0;
   j = 4;
   while(j <= 15)
   {
      if(eval("p" + j)._x == eval("b" + j)._x and eval("p" + j)._y == eval("b" + j)._y)
      {
         b = b + 1;
      }
      j++;
   }
   if(b == 12)
   {
      if(f == false)
      {
         f = true;
         gotoAndStop("pintu");
      }
   }
};
