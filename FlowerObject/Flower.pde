class flower{
int r=60;
float ballX;
float ballY;
float speedX = 3;
float speedY = 2;
float midX;
float midY;
float direcX = 3;
float direcY = 2;
float diameter;
int colour;
int w;

 flower(float xpos, float ypos,float size){
    midX = width/2;
    midY = height/2; 
    diameter = size;
    midX=xpos;
    midY=ypos;
 }


 flower(int xpos, int ypos,float size, int bredde, int tempColor){ 
    diameter = size;
    mouseX=xpos;
    mouseY=ypos;
    colour = tempColor;
    w = bredde;
 }

   
  void display(){
   fill(#FFA005);
  for (float i=0;i<PI*2;i+=2*PI/8) {
  ballX=midX + diameter*cos(i);
  ballY=midY + diameter*sin(i);
  ellipse(ballX,ballY,diameter,diameter); 
  }
  fill(20,10,150);
  ellipse(midX,midY,diameter,diameter);
  }


 void move(){
    midX = midX + (speedX * direcX);
    midY = midY + (speedY * direcY);
    ballX = ballX + (speedX * direcX);
    ballY = ballY + (speedY * direcY);
 }
 void bounce(){
    if (midX > width-(r*1.2) || midX < (r*1.2)){
    direcX*=-1;
  }
  if (midY > height-(r*1.2) || midY < (r*1.2)){
    direcY *= -1;
  }
 }

 void overlapse(flower other) {
    float d = dist(midX, midY, other.midX, other.midY);
    if (d < diameter+ other.diameter) {
      direcX = direcX*=-1;
      direcY = direcY*=-1; 
    }
    float distance  =dist(mouseX,mouseY,midX,midY);
    if (distance<diameter+other.diameter){
    background(150,150,150);
 }
    }

 void firkant(){
   rectMode(CENTER);
   fill(colour);
   rect(mouseX, mouseY, diameter, w, colour);
 }
 }
 
