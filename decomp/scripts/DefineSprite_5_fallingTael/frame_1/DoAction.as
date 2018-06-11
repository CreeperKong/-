var plusScore;
i = Math.random();
if(i < 0.5)
{
   Tael.gotoAndStop(1);
   plusScore = 10;
}
else if(i < 0.7)
{
   Tael.gotoAndStop(2);
   plusScore = 20;
}
else if(i < 0.9)
{
   Tael.gotoAndStop(3);
   plusScore = 20;
}
else
{
   Tael.gotoAndStop(4);
   plusScore = 30;
}
this._x = random(570) + 40;
this._y = -10;
speed = 10 + random(20);
