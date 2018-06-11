on(release){
   stopDrag();
   i = 1;
   while(i <= 15)
   {
      if(_parent._x <= eval("_root.b" + i)._x + 45 and _parent._x >= eval("_root.b" + i)._x - 45 and _parent._y <= eval("_root.b" + i)._y + 45 and _parent._y >= eval("_root.b" + i)._y - 45)
      {
         _parent._x = eval("_root.b" + i)._x;
         _parent._y = eval("_root.b" + i)._y;
      }
      i++;
   }
}
