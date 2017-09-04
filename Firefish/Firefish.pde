//Brian's Sketch

float x = 0;
float y = 0;
float z = 0;
float usernum = 0.1;
float usernum2 = 0.1;
void setup(){
  background(0);
  fullScreen();
  //size(500, 500);
  noStroke();
colorMode(HSB, 100);
  }


void draw(){
  topleft();
  pushMatrix();
  fill(255); // white square
  translate(70, 70);
  rotate(radians(30));
  scale(2.0);
  topleft();
  popMatrix();
}

void topleft(){
  fill(255);
  stroke(x,y,z);
rect(50, 50, 80, 80, usernum2) ;
rect(210, 50, 80, 80, usernum2) ;
rect(370, 50, 80, 80, usernum2) ;
rect(50, 210, 80, 80, usernum2) ;
rect(50, 370, 80, 80, usernum2) ;
rect(210, 210, 80, 80, usernum2) ;
rect(210, 370, 80, 80, usernum2) ;
rect(370, 210, 80, 80, usernum2) ;
rect(370, 370, 80, 80, usernum2) ;
usernum2 -= 0.4;
if (usernum <= 10){
  usernum+=0.1;
  x+=0.1;
  y+=0.2;
  z+=0.2;}
  if (usernum >= 10){
  usernum-=10;
  x-=10;
  y-=10;
  z-=10;
  
}
if (usernum2 <= -800){
  usernum2 = 0;
  y=0;
  z=0;
}
}