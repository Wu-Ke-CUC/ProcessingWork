//class Mover
//{
//  PVector position;
//  PVector velocity;
//  PVector accelerate;
//  float mass;
//  float G=1;
//  ArrayList<PVector> tralls;
//  Mover()
//  {
//    position=new PVector(random(200, 440), random(200, 440));
//    velocity=new PVector(0, 0);
//    accelerate=new PVector(0, 0);
//    mass=random(1, 4);
//    tralls=new ArrayList<PVector>();
//  }
//  PVector attract(Mover m)
//  {
//    PVector force=PVector.sub(position, m.position);
//    float distance=force.mag();
//    distance=constrain(distance, 5.0, 25.0);
//    force.normalize();
//    float strength=(G*mass*m.mass)/(distance*distance);
//    force.mult(strength);
//    return force;
//  }
//  void applyForce(PVector force)
//  {
//    PVector a=PVector.div(force, mass);
//    accelerate.add(a);
//  }
//  void showTralls()
//  {
//    noFill();
//    stroke(0,100);
//    beginShape();
//    for (PVector p:tralls)
//    {
//      vertex(p.x,p.y);
//    }
//    endShape();
//  }
//  void update()
//  {
//    velocity.add(accelerate);
//    position.add(velocity);
//    accelerate.mult(0);
//    tralls.add(position.copy());
//  }
//  void display()
//  {
//    stroke(0);
//    fill(122, 122);
//    ellipse(position.x, position.y, mass*16, mass*16);
//  }
//}
//class Mover {
//  PVector position;
//  PVector velocity;
//  PVector acceleration;
//  float topspeed;
//  float r = 16;
//  float n=0;
//  boolean m=false;
//  Mover() {
//    position = new PVector(width/2, height/2);
//    velocity = new PVector(0, 0);
//    topspeed = 10;
//  }
//  void update() {
//    PVector mouse = new PVector(mouseX, mouseY);
//    PVector dir = PVector.sub(mouse, position);
//    dir.normalize();
//    dir.mult(n);
//    if (!m)
//    {
//      velocity.mult(0.95);
//    }
//    acceleration = dir;
//    velocity.add(acceleration);
//    velocity.limit(topspeed);
//    position.add(velocity);
//  }
//  void display() {
//    float theta = atan2(velocity.y, velocity.x);
//    stroke(0);
//    strokeWeight(2);
//    pushMatrix();
//    translate(position.x, position.y);
//    rotate(theta);
//    if (m)
//    {
//      fill(255, 0, 0);
//      triangle(0, 10, 0, -10, -10, 0);
//    }
//    fill(255);
//    beginShape();
//    vertex(0, 0);
//    vertex(-10, 20);
//    vertex(30, 0);
//    vertex(-10, -20);
//    endShape(CLOSE);
//    popMatrix();
//  }
//  void checkEdges() {
//    if (position.x > width) {
//      position.x = 0;
//    } else if (position.x < 0) {
//      position.x = width;
//    }
//    if (position.y > height) {
//      position.y = 0;
//    } else if (position.y < 0) {
//      position.y = height;
//    }
//  }
//}
