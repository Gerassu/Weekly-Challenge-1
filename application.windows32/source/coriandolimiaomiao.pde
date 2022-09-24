float mx,my;
ArrayList<ParticleSystem> sistema;

void setup(){
  fullScreen();
  background(160);
  sistema = new ArrayList<ParticleSystem>();
  //ps = new ParticleSystem(new PVector(width/2, 50));
}

void draw(){
  background(0);
  
  for(ParticleSystem ps : sistema){
    ps.run();
    ps.addParticle();
  }
  if(sistema.isEmpty()){fill(255);textAlign(CENTER);text("schiaccia sullo schermo con il cursore per sparare coriandoli!", width/2, height/2);}
  //circle on mouseX mouseY
  ellipse(mouseX, mouseY, 10, 10);
}

void mousePressed(){
  sistema.add(new ParticleSystem(10, new PVector(mouseX, mouseY)));
}
