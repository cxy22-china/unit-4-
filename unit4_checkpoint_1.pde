 color black = #001219;
 color DB = #005f73;
 color ldb = #0a9396;
 color lb = #94d2bd;
 color midwhite = #e9d8a6;
 color yellow = #ee9b00;
 color orange = #ca6702;
 color or = #bb3e03;
 color red = #ae2012;
 color dr = #9b2226;
 color white = #FFFFFF;
 color B = #000000;
 color grey = #7C7B7A;
float x, y;
void setup(){
  size(1000, 800); 
  scale(.92);
    background(midwhite);



int count=1;
 while(count<20){
 house(x, y, random(0.25,2)); 
 x=x+200;
 if(x<1000){
   x=x+50;
 }
 else{
   x=0;
    y=y+300;
 }
 count+=1;
 }
  //house(random(500, 700), random(300,500), random(0.25,2)); 
}

void draw(){ 

}

void house(float x, float y, float s) {
  pushMatrix(); 
  translate(x, y); 
 
  
float r,  g,  b;
r= random(0,255);
g=random(0,255);
b= random(0,255);
 
  
  body();
  
  roof();
  window(0,0);
  door();
  window(45, 0);
  popMatrix();
}

void body(){
    float r,  g,  b;
r= random(0,255);
g=random(0,255);
b= random(0,255);
  
  
  fill(r,g,b);
  stroke(black);
  rect(0, 100, 100, 100); 
}

void roof(){
    float r,  g,  b;
r= random(0,255);
g=random(0,255);
b= random(0,255);
  fill(r,g,b);
  stroke(black);
  triangle(0, 100, 50, 50, 100, 100);
}

void window(float a, float c){
  float r,  g,  b;
r= random(0,255);
g=random(0,255);
b= random(0,255);
  
  fill(r,g,b);
  stroke(black);
  int x = 0;
  while (x < 2) {
    rect(10 + x+a, 110+c, 20, 20); 
    x = x + 1; 
  }
}



void door(){
   float r,  g,  b;
r= random(0,255);
g=random(0,255);
b= random(0,255);
  
  fill(r,g,b);
  stroke(black);
  rect(30, 150, 25, 50); 
}
