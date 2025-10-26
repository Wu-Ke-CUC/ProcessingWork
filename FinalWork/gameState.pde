void gameState()
{
  image(gameUI, 0, 0);
  pushMatrix();
  scale(0.2);
  image(pictureS, 800, 1200);
  popMatrix();
  if (isshot)
  {
    PVector gravity=new PVector(0, 0.2);
    birds[bn].applyForce(gravity);
  } else
  {
    stroke(0);
    strokeWeight(5);
    line(birds[bn].position.x+25, birds[bn].position.y+25, 175, 250);
    line(birds[bn].position.x+25, birds[bn].position.y+25, 215, 250);
  }
  birds[bn].display();
  if (setPig==0)
  {
    printZCCUC(450, 100);
    setPig++;
    ps[0]=new ParticleSystem(655, 150, 5);
    ps[1]=new ParticleSystem(505, 300, 5);
    ps[2]=new ParticleSystem(805, 300, 5);
    setPig++;
  }
  for (int i = ps.length - 1; i >= 0; i--)
  {
    ps[i].run();
    float left   = ps[i].X;
    float top    = ps[i].Y;
    float Width  = ps[i].cols * ps[i].R;
    float Height = ps[i].rows * ps[i].R;
    float right  = left + Width;
    float bottom = top  + Height;
    PVector pos = new PVector(birds[bn].position.x, birds[bn].position.y);
    float closestX = constrain(pos.x, left, right);
    float closestY = constrain(pos.y, top, bottom);
    float dx = pos.x - closestX;
    float dy = pos.y - closestY;
    float r = 25;
    boolean hit = dx * dx + dy * dy < r * r;
    if (hit)
    {
      if (ps[i].alive)
      {
        crush=minim.loadFile("撞击.mp3", 1024);
        crush.play();
        ps[i].shatter();
        if (abs(dx) > abs(dy))
        {
          birds[bn].velocity.x *= -0.7;
        } else if (abs(dy) > abs(dx))
        {
          birds[bn].velocity.y *= -0.7;
        } else {
          birds[bn].velocity.mult(-0.7);
        }
        ps[i].alive = false;
      }
    }
  }
  for (int i=0; i<pigs.length; i++)
  {
    pigs[i].display();
    if (dist(birds[bn].position.x, birds[bn].position.y, pigs[i].position.x, pigs[i].position.y)<20)
    {
      if (pigs[i].alive==true)
      {
        pigs[i].alive=false;
        if (pigs[i].pp==pictureP)
        {
          gameGoal++;
        } else if (pigs[i].pp==pictureP2)
        {
          gameGoal+=2;
          birds[bn].velocity.mult(0.7);
        }
      }
    }
  }
  if (birds[bn].position.y>=height||birds[bn].position.x>=width)
  {
    if (bn<4)
    {
      bn++;
      birds[bn]=new bird();
      isshot=false;
    } else
    {
      bn=0;
      state=2;
      birds[bn]=new bird();
      isshot=false;
    }
  }
}
