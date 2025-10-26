class ParticleSystem
{
  ArrayList<Particle> particles;
  int rows = 20;
  int cols = 10;
  float X;
  float Y;
  float R;
  boolean intact = true;
  boolean alive=true;
  ParticleSystem(float x, float y, float r)
  {
    X=x;
    Y=y;
    particles = new ArrayList<Particle>();
    for (int i = 0; i < rows; i++)
    {
      for (int j=0; j<cols; j++)
      {
        addParticle(x + i*r, y + j*r, r);
      }
    }
  }
  void addParticle(float x, float y, float r)
  {
    particles.add(new Particle(x, y, r));
  }
  void run()
  {
    update();
    display();
  }
  void display()
  {
    for (Particle p : particles)
    {
      p.display();
    }
  }
  void shatter()
  {
    intact = false;
  }
  void update()
  {
    if (!intact)
    {
      for (Particle p : particles)
      {
        p.update();
      }
    }
  }
}
