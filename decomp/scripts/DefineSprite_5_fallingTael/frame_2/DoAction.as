this._y = this._y + speed;
if(this._y > 420)
{
   this.removeMovieClip();
}
else if(this._y <= 405 && this._y + speed >= 405)
{
   disX = Math.abs(this._x - _root.caishen._x);
   if(disX < 30)
   {
      _root.score = _root.score + plusScore;
      this.removeMovieClip();
   }
}
