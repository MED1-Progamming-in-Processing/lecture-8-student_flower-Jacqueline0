// Code made from an example from Github

flower b1;
flower b2;
flower b3;

void setup(){
  size(850,850);
  b1 = new flower(400,400,50);
  b2 = new flower(150, 300, 30);
  b3 = new flower(650,250,80,60, 40);
  frameRate(70);
}
void draw(){
  background(#FFFFFF);
  
  b1.display();
  b1.move();
  b1.bounce();
  b1. overlapse(b2);
  b1. overlapse(b3);
  
  b2. display();
  b2. move();
  b2. bounce();
  b2. overlapse(b1);
  b2. overlapse(b3);
  
  b3.firkant();
  b3.move();
  b3.bounce();
  b3. overlapse(b2);
  b3. overlapse(b1);
 
}
