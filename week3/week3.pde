//Table stats;
//void setup()
//{
//  size(2*367, 300);
//  stats=loadTable("temp2024.csv");
//  float[][] temp=new float[366][2];
//  //strokeWeight(2);
//  colorMode(HSB,360);
//  for (int i=0; i<stats.getRowCount(); i++)
//  {
//    temp[i][0]=stats.getFloat(i, 1);
//    temp[i][1]=stats.getFloat(i, 2);
//    float Ltemp=map(temp[i][0], -20, 40, 300, 0);
//    float Htemp=map(temp[i][1], -20, 40, 300, 0);
//    float c=map((temp[i][0]+temp[i][1])/2,0,30,0,239);
//    stroke(239-c,255,255);
//    line(2*i+2, Ltemp, 2*i+2, Htemp);
//  }
//}

//Table stats;
//float[][] temp=new float[366][2];
//void setup()
//{
//  size(600, 600);
//  stats=loadTable("temp2024.csv");
//  colorMode(HSB, 360);
//}
//void draw()
//{
//  background(#DBDBDB);
//  noFill();
//  strokeWeight(2);
//  translate(300, 300);
//  float R=(float)map(0, -20, 40, 0, 300);
//  for (int i=1; i<6; i++)
//  {
//    stroke(#FFFFFF);
//    if (i==2)stroke(#FF0000);
//    ellipse(0, 0, R*i, R*i);
//  }
//  for (int i=0; i<12; i++)
//  {
//    line(0, 0, cos(i*2*PI/12)*400, sin(i*2*PI/12)*400);
//  }
//  for (int i=0; i<stats.getRowCount(); i++)
//  {
//    temp[i][0]=stats.getFloat(i, 1);
//    temp[i][1]=stats.getFloat(i, 2);
//    float Ltemp=map(temp[i][0], -20, 40, 0, 300);
//    float Htemp=map(temp[i][1], -20, 40, 0, 300);
//    float c=map((temp[i][0]+temp[i][1])/2, 0, 30, 0, 239);
//    stroke(239-c, 255, 255);
//    float x1=sin(i*2*PI/stats.getRowCount())*Ltemp;
//    float y1=cos(i*2*PI/stats.getRowCount())*Ltemp;
//    float x2=sin(i*2*PI/stats.getRowCount())*Htemp;
//    float y2=cos(i*2*PI/stats.getRowCount())*Htemp;
//    line(x1, y1, x2, y2);
//  }
//}

//float n = 0;
//void setup() {
//  size(600, 300);
//  background(255);
//}
//void draw() {
//  background(#52A1FF);
//  float t = 0;
//  float x = 0;
//  for (int i=width/10; i<=width/10*9; i+=width/10)
//  {
//    int y1 = (int)map(noise(t, n), 0, 1, 0, 300);
//    x=(float)map(noise(x, n), 0, 1, 0, 255);
//    strokeWeight(width/10-2);
//    stroke(255-y1, 100, x);
//    strokeCap(SQUARE);
//    line(i, 300, i, y1);
//    t += 0.3;
//    x += 0.001;
//  }
//  n += 0.01;
//}

//float n=0;
//void setup()
//{
//  size(512, 512);
//}
//void draw()
//{
//  background(221, 122, 155);
//  float tx=0.0;
//  for (int i=0; i<width; i+=16)
//  {
//    float ty=0.0;
//    for (int j=0; j<height; j+=16)
//    {
//      float S=(float)map(noise(tx, ty, n), 0, 1, 0, 2);
//      float rotate=(float)map(noise(tx, tx+n, n), 0, 1, -PI/2, PI/2);
//      float red=(float)map(noise(ty+n, ty, n), 0, 1, 0, 255);
//      pushMatrix();
//      translate(i, j);
//      scale(S);
//      rotate(rotate);
//      fill(red, 0, 255-red);
//      rect(0, 0, 15, 15);
//      //scale(1/S);
//      ty+=0.01;
//      popMatrix();
//    }
//    tx+=0.01;
//  }
//  n+=0.005;
//}

//Mover[] mover=new Mover[10000];
//void setup() {
//  size(640, 360);
//  for (int i=0; i<10000; i++)
//  {
//    mover[i]=new Mover();
//  }
//}
//void draw() {
//  background(255);
//  for (int i=0; i<10000; i++)
//  {
//    fill(i%255,255-i%255,255);
//    mover[i].update();
//    mover[i].checkEdges();
//    mover[i].display();
//  }
//}

//Table stats;
//float[][] temp=new float[366][2];
//void setup() {
//  size(600, 600);
//  stats=loadTable("temp2024.csv");
//  colorMode(HSB, 360);
//}
//void draw() {
//  background(#DBDBDB);
//  noFill();
//  strokeWeight(2);
//  translate(300, 300);
//  float R=(float)map(0, -20, 40, 0, 300);
//  for (int i=1; i<6; i++) {
//    stroke(#FFFFFF);
//    if (i==2) stroke(#FF0000);
//    ellipse(0, 0, R*i, R*i);
//  }
//  for (int i=0; i<12; i++) {
//    line(0, 0, cos(i*2*PI/12)*400, sin(i*2*PI/12)*400);
//  }
//  float closestDist = 10; // distance threshold
//  int closestIndex = -1;
//  for (int i=0; i<stats.getRowCount(); i++) {
//    temp[i][0]=stats.getFloat(i, 1);
//    temp[i][1]=stats.getFloat(i, 2);
//    float Ltemp=map(temp[i][0], -20, 40, 0, 300);
//    float Htemp=map(temp[i][1], -20, 40, 0, 300);
//    float angle = i * TWO_PI / stats.getRowCount();
//    float x1 = sin(angle) * Ltemp;
//    float y1 = cos(angle) * Ltemp;
//    float x2 = sin(angle) * Htemp;
//    float y2 = cos(angle) * Htemp;
//    float mx = mouseX - 300;
//    float my = mouseY - 300;
//    float d = distToSegment(mx, my, x1, y1, x2, y2);
//    if (d < closestDist) {
//      closestDist = d;
//      closestIndex = i;
//    }
//  }
//  for (int i=0; i<stats.getRowCount(); i++) {
//    float Ltemp=map(temp[i][0], -20, 40, 0, 300);
//    float Htemp=map(temp[i][1], -20, 40, 0, 300);
//    float c=map((temp[i][0]+temp[i][1])/2, 0, 30, 0, 239);
//    stroke(239-c, 255, 255);
//    float angle = i * TWO_PI / stats.getRowCount();
//    float x1 = sin(angle) * Ltemp;
//    float y1 = cos(angle) * Ltemp;
//    float x2 = sin(angle) * Htemp;
//    float y2 = cos(angle) * Htemp;
//    if (i == closestIndex) {
//      strokeWeight(4);
//      float midX = (x1 + x2) / 2;
//      float midY = (y1 + y2) / 2;
//      float dx1 = x1 - midX;
//      float dy1 = y1 - midY;
//      float dx2 = x2 - midX;
//      float dy2 = y2 - midY;
//      float newX1 = midX + dx1 * 2;
//      float newY1 = midY + dy1 * 2;
//      float newX2 = midX + dx2 * 2;
//      float newY2 = midY + dy2 * 2;
//      line(newX1, newY1, newX2, newY2);
//    } else {
//      strokeWeight(2);
//      line(x1, y1, x2, y2);
//    }
//  }
//  if (closestIndex != -1) {
//    fill(239-map((temp[closestIndex][0]+temp[closestIndex][1])/2, 0, 30, 0, 239), 255, 255);
//    textAlign(CENTER, CENTER);
//    textSize(32);
//    text("highest:"+temp[closestIndex][1], 0, -20);
//    text("lowest:"+temp[closestIndex][0],0,10);
//  }
//}
//float distToSegment(float px, float py, float x1, float y1, float x2, float y2) {
//  float dx = x2 - x1;
//  float dy = y2 - y1;
//  if (dx == 0 && dy == 0) {
//    return dist(px, py, x1, y1);
//  }
//  float t = ((px - x1) * dx + (py - y1) * dy) / (dx * dx + dy * dy);
//  t = constrain(t, 0, 1);
//  float nx = x1 + t * dx;
//  float ny = y1 + t * dy;
//  return dist(px, py, nx, ny);
//}
