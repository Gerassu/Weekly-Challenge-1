float mx,my;
ParticleSystem ps;

void setup(){
  fullScreen();
  background(235);
  ps = new ParticleSystem(new PVector(width/2, 50));
}

void draw(){
  background(0);
  //circle on mouseX mouseY
  ellipse(mouseX, mouseY, 10, 10);
  if(mousePressed){
    ps.addParticle();
    ps.run();
  }
}
