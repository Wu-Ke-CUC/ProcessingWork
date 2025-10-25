class ParticleSystem {
  ArrayList<Particle> particles;
  PVector origin;
  ParticleSystem(PVector position) {
    origin = position.get();
    particles = new ArrayList<Particle>();
  }
  void addParticle() {
    float r = random(3);
    if (r < 1) {
      particles.add(new Particle(origin));
    } else if (r<2&&r>1) {
      particles.add(new Confetti(origin));
    } else
    {
      particles.add(new Triangle(origin));
    }
  }
  void run() {
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.run();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
}
