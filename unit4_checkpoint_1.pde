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
  
 size (800, 800); 
}

void draw(){ 
 house(200, 100); 
 house(500,-200); 
 
}

void house(int x, int y) {
  pushMatrix(); 
  translate(x, y); 
  hair(); 
  eye();
  eye();
  mouth();
  
  popMatrix();
}


void house
