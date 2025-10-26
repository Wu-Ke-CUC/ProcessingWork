import ddf.minim.*;
Minim minim;
AudioPlayer groove;
AudioPlayer crush;
PImage pictureB;
PImage pictureP;
PImage pictureP2;
PImage pictureS;
PImage gameUI;
PImage startUI;
PImage overUI;
int state=0;
int setPig=0;
float distance;
int gameGoal=0;
boolean isshot=false;
PVector dragPos = new PVector();
bird[] birds=new bird[5];
int bn=0;
pig[] pigs=new pig[35];
int pn=0;
ParticleSystem[] ps=new ParticleSystem[3];
void setup()
{
  size(900, 600);
  minim = new Minim(this);
  groove = minim.loadFile("Intro.mp3", 1024);
  groove.loop();
  pictureB=loadImage("bird.png");
  pictureP=loadImage("pig.png");
  pictureP2=loadImage("pig2.png");
  pictureS=loadImage("slingShot.png");
  gameUI=loadImage("backGround.jpg");
  startUI=loadImage("startUI.jpg");
  overUI=startUI;
  birds[bn]=new bird();
}
void draw()
{
  switch(state)
  {
  case 0:
    startState();
    break;
  case 1:
    gameState();
    break;
  case 2:
    overState();
    break;
  }
}
void keyPressed()
{
  if (state==0)
  {
    state=1;
  } else if (state==2)
  {
    state=0;
  }
}
void mousePressed()
{
  dragPos.set(mouseX - birds[bn].position.x, mouseY - birds[bn].position.y);
}
void mouseDragged()
{
  if (isshot==false)
  {
    float maxDrag=150;
    float PressX=mouseX-dragPos.x;
    float PressY=mouseY-dragPos.y;
    distance=dist(PressX, PressY, 165, 240);
    if (distance>maxDrag)
    {
      PressX=165+(PressX-165)*maxDrag/distance;
      PressY=240+(PressY-240)*maxDrag/distance;
      distance=maxDrag;
    }
    birds[bn].position.set(PressX, PressY);
  }
}
void mouseReleased()
{
  if (state==1&&isshot==false)
  {
    isshot=true;
    PVector force=new PVector(165-birds[bn].position.x, 240-birds[bn].position.y);
    force.normalize();
    force.mult(distance/10);
    birds[bn].applyForce(force);
  }
}
