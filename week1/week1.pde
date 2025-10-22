//void setup()
//{
//  size(1000, 1000);
//  background(255);
//  stroke(0, 102);
//  strokeWeight(3);
//}
//void draw()
//{
//  //fill(0, 0, dist(mouseX, mouseY, pmouseX, pmouseY),255-dist(mouseX, mouseY, pmouseX, pmouseY));
//  //ellipse(mouseX, mouseY, 100, 100);
//  strokeWeight(dist(mouseX, mouseY, pmouseX, pmouseY));
//  stroke(0, 0, dist(mouseX, mouseY, pmouseX, pmouseY));
//  line(mouseX, mouseY, pmouseX, pmouseY);
//}
float x;
float y;
float easing=0.05;
float ScaleSum=0.3;
void setup()
{
  size(520, 520);
}
void draw()
{
  background(255);
  strokeWeight(3);
  fill(255);
  float targetX = mouseX;
  x += (targetX - x)*easing;
  float targetY = mouseY;
  y += (targetY - y)*easing;
  pushMatrix();
  if(keyPressed==true)
  {
    if(key=='r'){fill(255,0,0);}
    if(key=='g'){fill(0,255,0);}
    if(key=='b'){fill(0,0,255);}
  }
  translate(x-240*ScaleSum, y-280*ScaleSum);
  scale(ScaleSum);
  strokeJoin(ROUND);
  triangle(437, 103, 401, 282, 269, 150);
  triangle(54, 102, 134, 138, 66, 189);
  ellipse(250, 250, 400, 300);
  line(331, 323, 399, 303);
  line(331, 323, 399, 331);
  line(331, 323, 399, 364);
  line(162, 323, 102, 303);
  line(162, 323, 102, 332);
  line(162, 323, 102, 360);
  arc(228, 290, 30, 30, 0, 0.9*PI);
  arc(259, 290, 30, 30, 0.1*PI, 1.0*PI);
  fill(0);
  ellipse(329, 234, 30, 40);
  ellipse(166, 234, 30, 40);
  if (dist(x, y, mouseX, mouseY)<=20)
  {
    ScaleSum+=0.001;
  }
  popMatrix();
  ellipse(mouseX, mouseY, 20, 20);
}
//float angle=0;
//float angleDirection = 1;
//float speed = 0.02;
//void setup() {
//  size(960, 960);
//  background(255);
//  stroke(0);
//}
//void draw() {
//  translate(480, 480);
//  rotate(angle*2.5);
//  strokeWeight(1);
//  line(0, 0, 300, 0);
//  translate(300, 0);
//  rotate(angle*2);
//  strokeWeight(1);
//  line(0, 0, 200, 0);
//  translate(200, 0);
//  rotate(angle);
//  strokeWeight(1);
//  line(0, 0, 200, 0);
//  angle += speed * angleDirection;
//  if (angle > 4*PI) {
//    angleDirection = 0;
//  }
//}
