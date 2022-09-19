void setup(){
 fullScreen();
 background(0);
}

void apparecoriandolo(){
  noStroke();
  rect(map(key,0, 255, 50, width-50), height - 100, 30, 30);
  fill(random(122)*2,random(122)*2,random(122)*2);
  }
float keytmp;

void muovicoriandoli(){
  translate(random(2), random(2));
}
void draw(){
  //key viene utilizzata per il colore del coriandolo / coriandoli, e segnare la posizione da dove partono
  //keyPressed utilizzato per sparare i coriandoli
  if(keytmp != key){
    apparecoriandolo();
  }else{
    }

       keytmp = key;
}
