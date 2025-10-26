class pig
{
  PVector position;
  boolean alive=true;
  PImage pp;
  pig(float x, float y, PImage picture)
  {
    position=new PVector(x, y);
    pp=picture;
  }
  void display()
  {
    if (alive==true)
    {
      image(pp, position.x, position.y);
    }
  }
}
