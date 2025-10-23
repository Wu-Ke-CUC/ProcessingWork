PFont font;
String quote="我是康熙字典体";
float time, newtime, deltatime, oldtime;
int trigger=0;
void setup()
{
  size(480, 240);
  font=createFont("康熙字典体.ttf", 32);
  textFont(font);
  newtime=0;
}
void draw()
{
  background(0);
  time=millis();
  oldtime=newtime;
  newtime=time;
  deltatime=newtime-oldtime;
  println(deltatime);
  trigger+=deltatime;
  textSize(64);
  if (mousePressed==true)
  {
    fill(#10FF00);
    text(trigger/1000+"s start!", 150, 120);
  }
  else
  {
    fill(#FF0000);
    text("0s stop!", 150, 120);
    trigger=0;
  }
}

//float angle = 0.0;
//float offset = 120;
//float scalar = 80;
//float speed = 0.0005;
//void setup()
//{
//  size(480, 240);
//}
//void draw()
//{
//  background(0);
//  for (int i=0; i<=width/5; i++)
//  {
//    float y = offset + sin(angle+0.4*i) * scalar;
//    ellipse( i*10, y, 20, 20);
//    angle += speed;
//  }
//}

//float angle = 0.0;
//float offset = 240;
//float scalar = 0;
//float speed = 0.4;
//float red=200;
//float green=0;
//float r=2.5;
//void setup() {
//  size(480, 480);
//  //background(#69C5FC);
//  background(255);
//}
//void draw() {
//  noStroke();
//  fill(red, green, 255);
//  fill(255, green, red);
//  red-=0.1;
//  green+=0.1;
//  float x = offset + sin(angle+0.4) * scalar;
//  float y = offset + cos(angle) * scalar;
//  ellipse( x, y, r, r);
//  r+=0.01;
//  angle += speed;
//  scalar += 0.3;
//}

//float angle=0.0;
//void setup()
//{
//  size(240, 360);
//}
//void draw()
//{
//  background(255);
//  ellipse(120, 100, 20, 20);
//  ellipse(120+60*cos(angle), 100+60*sin(angle), 20, 20);
//  line(120, 100, 120+60*cos(angle), 100+60*sin(angle));
//  ellipse(120, 100+60*sin(angle)+20*sqrt(9*sin(angle)*sin(angle)+16), 20, 20);
//  line(120+60*cos(angle), 100+60*sin(angle), 120, 100+60*sin(angle)+20*sqrt(9*sin(angle)*sin(angle)+16));
//  angle+=0.05;
//  println(dist(120+60*cos(angle), 100+60*sin(angle), 120, 100+60*sin(angle)+20*sqrt(9*sin(angle)*sin(angle)+16) ));
//}

//int trigger=0;
//ArrayList<RainFall> rains=new ArrayList<RainFall>();
//void setup()
//{
//  size(960, 960);
//}
//void draw()
//{
//  frameRate(40);
//  background(255);
//  for (int i=rains.size()-1; i>=0; i--)
//  {
//    RainFall rain=rains.get(i);
//    rain.display();
//    rain.bigger();
//    if (rain.Stroke==255)
//    {
//      rains.remove(i);
//    }
//  }
//  rains.add(new RainFall(random(width), random(height)));
//  if (mousePressed)
//  {
//    rains.add(new RainFall(mouseX, mouseY));
//  }
//}
