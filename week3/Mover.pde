class Mover {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  Mover() {
    position = new PVector(random(width), random(height));
    velocity = new PVector(0, 0);
    acceleration = new PVector(-0.001, 0.01);
    topspeed = 10;
  }
  void update() {
    //加速度随机变化
    //acceleration = PVector.random2D();
    //acceleration.mult(random(2));
    //小球向鼠标位置加速
    PVector mouse = new PVector(mouseX,mouseY);
    PVector acceleration = PVector.sub(mouse,position);
    acceleration.setMag(0.4);//设置加速度大小
    velocity.add(acceleration);//加速度改变速度
    velocity.limit(topspeed);//限制最大速度
    position.add(velocity);//速度改变位置
  }
  void display() {
    //stroke(0);
    //strokeWeight(2);
    //fill(127);
    noStroke();
    ellipse(position.x, position.y, 3, 3);
  }
  void checkEdges() {
    if (position.x > width) {
      position.x = 0;
    } else if (position.x < 0) {
      position.x = width;
    }
    if (position.y > height) {
      position.y = 0;
    } else if (position.y < 0) {
      position.y = height;
    }
  }
}
