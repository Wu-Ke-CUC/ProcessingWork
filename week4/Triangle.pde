class Triangle extends Particle {
  Triangle(PVector l) {
    super(l);
  }
  void display() {
    fill(#00F70E, lifespan);
    stroke(0, lifespan);
    strokeWeight(2);
    pushMatrix();
    translate(position.x, position.y);
    float theta = map(position.x, 0, width, 0, TWO_PI*2);
    rotate(theta);
    triangle(-5, 0, 5, 0, 0, 10);
    popMatrix();
  }
}
