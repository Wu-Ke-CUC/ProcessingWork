class Particle {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;

  Particle(PVector l) {
    acceleration = new PVector(0,0.1);
    velocity = new PVector(random(-1,1),random(-8,0));
    position = l.get();
    lifespan = 700.0;
  }
  void run() {
    update();
    display();
  }
  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    lifespan -= 5.0;
  }
  void display() {
    stroke(0,lifespan);
    strokeWeight(2);
    fill(255,255,0,lifespan);
    ellipse(position.x,position.y,12,12);
  }
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}
