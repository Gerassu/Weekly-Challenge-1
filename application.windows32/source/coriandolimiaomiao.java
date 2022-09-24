import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class coriandolimiaomiao extends PApplet {

float mx,my;
ArrayList<ParticleSystem> sistema;

public void setup(){
  
  background(160);
  sistema = new ArrayList<ParticleSystem>();
  //ps = new ParticleSystem(new PVector(width/2, 50));
}

public void draw(){
  background(0);
  
  for(ParticleSystem ps : sistema){
    ps.run();
    ps.addParticle();
  }
  if(sistema.isEmpty()){fill(255);textAlign(CENTER);text("schiaccia sullo schermo con il cursore per sparare coriandoli!", width/2, height/2);}
  //circle on mouseX mouseY
  ellipse(mouseX, mouseY, 10, 10);
}

public void mousePressed(){
  sistema.add(new ParticleSystem(10, new PVector(mouseX, mouseY)));
}
float r = 0,g= 0, b=0,a;

class Particle {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;

  Particle(PVector l) {
    acceleration = new PVector(0, 0.02f);
    velocity = new PVector(random(-1, 1), random(-2, 0));
    position = l.copy();
    lifespan = random(300);
  }

  public void run() {
    update();
    display();
  }

  public void update() {
    velocity.add(acceleration);
    position.add(velocity);
    lifespan -= 1.0f;
  }

  public void display() {
    stroke(255, lifespan);
    //fill(color_r[(int)r], color_r[(int)g], color_r[(int)b]);
    fill(random(100)*2, lifespan, 30);
    if(keyPressed){
      ellipse(position.x, position.y, 128, 128);
    }else
    {  
    ellipse(position.x, position.y, 12, 12);
  }
  }
  
  /*void updateColor(){
    float re = random(4);
    float gr = random(4);
    float bl = random (4);
    
    r = re;
    g = gr; 
    b = bl;
  }*/
  
  int[] color_r = {0, 60, 120, 180, 255};
  
  public boolean isDead() {
    if (lifespan < 0.0f) {
      return true;
    } else {
      return false;
    }
  }
  
  /*void mousePressed(){
    updateColor();
    }*/
    
    public void mousePressed(){
      float a = random(122);
    }
    
    public void fillmeup(){fill(255, lifespan/5, 0);}
    
}
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

  public void addParticle() {
    Particle p = new Particle(origin);
    particles.add(p);
  }
  
  public void addParticle(Particle p){
  particles.add(p);
}

  public void run() {
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.run();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
}
  public void settings() {  fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "coriandolimiaomiao" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
