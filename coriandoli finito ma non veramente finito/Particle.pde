float r = 0,g= 0, b=0,a;

class Particle {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;

  Particle(PVector l) {
    acceleration = new PVector(0, 0.02);
    velocity = new PVector(random(-1, 1), random(-2, 0));
    position = l.copy();
    lifespan = random(300);
  }

  void run() {
    update();
    display();
  }

  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    lifespan -= 1.0;
  }

  void display() {
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
  
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
  
  /*void mousePressed(){
    updateColor();
    }*/
    
    void mousePressed(){
      float a = random(122);
    }
    
    void fillmeup(){fill(255, lifespan/5, 0);}
    
}
