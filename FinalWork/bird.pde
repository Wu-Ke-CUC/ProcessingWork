class bird
{
  PVector position;
  PVector velocity;
  PVector acceleration;
  bird()
  {
    position=new PVector(165, 240);
    velocity=new PVector(0, 0);
    acceleration=new PVector(0, 0);
  }
  void applyForce(PVector force)
  {
    acceleration.add(force);
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);
  }
  void display()
  {
    image(pictureB, position.x, position.y);
  }
}
