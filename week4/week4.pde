//Mover[] ms=new Mover[3];
//void setup()
//{
//  size(640, 640);
//  for (int i=0; i<ms.length; i++)
//  {
//    ms[i]=new Mover();
//  }
//}
//void draw()
//{
//  background(255);
//  for (int i=0; i<ms.length; i++)
//  {
//    for (int j=0; j<ms.length; j++)
//    {
//      if (i!=j)
//      {
//        PVector force=ms[j].attract(ms[i]);
//        ms[i].applyForce(force);
//      }
//    }
//    ms[i].update();
//    ms[i].display();
//    ms[i].showTralls();
//  }
//}
//Mover mover;
//void setup() {
//  size(640,360);
//  mover = new Mover();
//  background(255);
//}
//void draw() {
//  background(#002DDB);
//  for(int i=0;i<100;i++)
//  {
//    noStroke();
//    fill(255);
//    ellipse(random(640),random(360),2,2);
//  }
//  noStroke();
//  mover.update();
//  mover.checkEdges();
//  mover.display();
//}
//void keyPressed()
//{
//  mover.n+=0.001;
//  mover.m=true;
//}
//void keyReleased()
//{
//  mover.n=0;
//  mover.m=false;
//}
//ParticleSystem ps;
//void setup() {
//  size(640, 360);
//  ps = new ParticleSystem(new PVector(width/2, 290));
//}
//void draw() {
//  background(255);
//  ps.addParticle();
//  ps.run();
//  fill(#FF5F75);
//  rect(320, 330, 40, 60);
//}
import ddf.minim.analysis.*;
import ddf.minim.*;
Minim       minim;
AudioPlayer jingle;
FFT         fft;
boolean isPlay=false;
void setup()
{
  size(512, 512, P3D);
  minim = new Minim(this);
  jingle = minim.loadFile("jingle.mp3", 1024);
  jingle.loop();
  fft = new FFT( jingle.bufferSize(), jingle.sampleRate() );
}
void draw()
{
  background(0);
  textSize(32);
  text("Press the space to play or pause",40,40);
  stroke(255);
  fft.forward( jingle.mix );
  println(fft.specSize());
  translate(width/2, height/2);
  strokeWeight(2);
  stroke(255);
  noFill();
  rect(-180, -180, 360, 360);
  ellipse(120, -120, 50, 50);
  if (isPlay)
  {
    line(120, -120, 90, 20);
    for (int i = 0; i < 360; i++)
    {
      colorMode(HSB, 360);
      float c=map(i, 0, 360, 239, 0);
      stroke(239-c, 255, 255);
      line(cos(2*PI/360*i)*height/5, sin(2*PI/360*i)*height/5, cos(2*PI/360*i)*(height + fft.getBand(i)*8)/5, sin(2*PI/360*i)*(height + fft.getBand(i)*8)/5);
      ellipse(0, 0, (height + fft.getBand(i/2)*8)/5, (height + fft.getBand(i/2)*8)/5);
    }
  } else
  {
    line(120, -120, 120, 30);
  }
}
void keyReleased()
{
  if (key==' '&&isPlay==false)
  {
    isPlay=true;
  } else if (key==' '&&isPlay==true)
  {
    isPlay=false;
  }
}
