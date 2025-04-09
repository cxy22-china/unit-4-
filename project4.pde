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

void setup(){
  size(1000, 1000); 
  scale(0.2);
}

void draw(){ 
  background(midwhite);
  house(200, 300); 
 house(500, 300); 
}

void house(int x, int y) {
  pushMatrix(); 
  translate(x, y); 

  body();
  roof();
  window();
  door();
  window();
  popMatrix();
}

void body(){
  fill(lb);
  stroke(black);
  rect(0, 100, 100, 100); 
}

void roof(){
  fill(DB);
  stroke(black);
  triangle(0, 100, 50, 50, 100, 100);
}

void window(){
  fill(yellow);
  stroke(black);
  int x = 0;
  while (x < 2) {
    rect(10 + x, 110, 20, 20); 
    x = x + 1;
  }
}



void door(){
  fill(ldb);
  stroke(black);
  rect(30, 150, 25, 50); 
}
