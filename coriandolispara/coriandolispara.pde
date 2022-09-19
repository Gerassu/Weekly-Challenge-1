float x,y,z,red;
float angle;

void setup(){
background(0);
lights();
fullScreen(P3D);
x = width/2;
y = height/2;
z =  0;
stroke(255);
angle = 0;
}

void draw(){
  background(0);
  translate(width/2, height/2, 0);
  noFill();
  stroke(255,0,0);
  strokeWeight(9);
  rotateX(angle);
  rotateY(angle);
  rotateZ(angle);
  box(300);
  if(mousePressed){
    red = 0;
    }else{
      red = 255;
      }
  box(280);
   
  angle += 0.01;
}
