class ParticleSystem {
  ArrayList<Particle> particles;
  PVector origin;

  ParticleSystem(int num, PVector position) {
    particles = new ArrayList<Particle>();
    origin = position.copy();
    for (int i = 0; i < num; i++) {
      particles.add(new Particle(origin)); 
      }
  }

  void addParticle() {
    Particle p = new Particle(origin);
    particles.add(p);
  }
  
  void addParticle(Particle p){
  particles.add(p);
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
