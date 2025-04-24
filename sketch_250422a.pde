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
float x=0, y=0, s=1 ;
int starCount, timcount;
int rectstarCount, ufo;
float angle;
void setup() {
  size(1000, 800);

  background(0);



  drawStar();
  rectstar();
  int UFOcount=1;
  while (UFOcount<37) {

    drawUFO(random(X+25, 55), (random(Y, 55)), s);
  
  
      
    x=x+125;
    if (x<1120) {
      x=x+0;
    } else {
      x=0;
      y=y+75;
    }
    UFOcount+=1;
    
  }
  

  int timcount=1;
  while (timcount<7) {

    drawtim(random(X+25, 900), (random(Y+25, 250)), (random(0.5,s)));
  
      
    x=x+125;
    if (x<1000) {
      x=x+0;
    } else {
      x=0;
      y=y+75;
    }
    timcount+=1;
    
  }
  
x=0;
y=250;


  int count=1;
  while (count<5) {
    float s = random(0.5, 1.5);
    house(x+10, y+250, s);

    x=x+250;
    if (x<1000) {
      x=x+0;
    } else {
      x=0;
      y=y+00;
    }
    count+=1;
  }
  // drawStar();
  //rectstar();
  //house(random(500, 700), random(300,500), random(0.25,2));
}

void draw() {
}

void house(float x, float y, float s) {
  pushMatrix();
  translate(x+50, y);
  scale(s);

  float r, g, b;
  r= random(0, 255);
  g=random(0, 255);
  b= random(0, 255);
  s= random(.2, 2);

  body();

  roof();
  window(0, 0);
  door();
  window(45, 0);
  window(90, 0);
  window(90+45, 0);

  window(90, 0+50);
  window(45, 0+50);
  popMatrix();
}

void body() {
  float r, g, b;
  r= random(0, 255);
  g=random(0, 255);
  b= random(0, 255);


  fill(r, g, b);
  stroke(black);
  rect(0, 100, 200, 50);
}

void roof() {
  float r, g, b;
  r= random(0, 255);
  g=random(0, 255);
  b= random(0, 255);
  fill(r, g, b);
  stroke(black);
  triangle(0, 100, 100, 65, 200, 100);
}

void window(float a, float c) {
  float r, g, b;
  r= random(0, 255);
  g=random(0, 255);
  b= random(0, 255);
  s= random(.2, 1);

  fill(r, g, b);
  stroke(black);
  int x = 0;
  while (x < 3) {
    rect(10 + x+a, 110+c, 20, 20);
    x = x + 1;
  }
}



void door() {
  float r, g, b;
  r= random(0, 255);
  g=random(0, 255);
  b= random(0, 255);

  fill(r, g, b);
  stroke(black);
  rect(30, 150, 135, 35);
}


void drawStar() {
  int starCount = 0;
  while (starCount < 1350) {
    float x = random(width);
    float y = random(height);
    float size = random(1, 3);
    float r, g, b;

    r= random(0, 255);
    g=random(0, 255);
    b= random(0, 255);


    fill(r, g, b);
    ellipse(x, y, size, size);
    starCount = starCount + 1;
  }
}



void rectstar() {
  int rectstarCount = 0;
  while (rectstarCount < 345) {
    float x = random(width);
    float y = random(height);
    float size = random(0.5, 3.9);

    pushMatrix();
    translate(width/2, height/2);
    int  count=0;
    while (count<110) {
      rotate(radians(angle));
      float r, g, b;

      r= random(0, 255);
      g=random(0, 255);
      b= random(0, 255);


      fill(r, g, b);
      rect(x, y, size, size);
      count=count+1;
      angle+=0.5;
    }


    rectstarCount = rectstarCount + 1;
    popMatrix();
  }
}


void drawUFO(float x, float y, float s) {
  pushMatrix();
  translate(x+25, y+25);
  
  drawUFObody();
  drawUFOdome();
  drawUFObomb();


 
  popMatrix();

}



void tim(float x, float y, float s) {
  pushMatrix();
  translate(x+25, y+25);
  scale(0.85);
   drawtim(x,y,s);


  popMatrix();
}





void drawUFObody() {
  fill(180, 220, 255);  // UFO body color
  ellipse(x, y, 40, 15);  // UFO body
}


void drawUFOdome() {

  float r, g, b;

  r= random(0, 255);
  g=random(0, 255);
  b= random(0, 255);

  fill(r, g, b);  // UFO dome color
  ellipse(x, y - 5, 20, 10);  // UFO dome
}

void drawUFObomb() {
  // Bomb body
  fill(50); // dark grey
  stroke(0);
  strokeWeight(2);
  ellipse(x, y+350, 20, 20); // bomb body at (x, y)

  // Fuse
  stroke(100, 50, 0); // brown fuse
  strokeWeight(2);
  line(x, y - 10+350, x, y - 20+350); // fuse line above bomb

  // Spark (small fire)
  noStroke();
  fill(255, 150, 0); // orange
  ellipse(x, y - 23+350, 5, 5); // spark above fuse
}



//  fill(random(0,255));
//  line(x, y+120, x, random(y+175,y+450));
//}

void drawtim(float x, float y, float s) {
  pushMatrix();
  translate(x, y);
  scale(s);

  //  body (greenish color)
  fill(ldb);  
  noStroke();
  ellipse(0, 0, 30, 45); 

  //  head 
  fill(DB);  
  ellipse(0, -25, 30, 35);  

  //  eyes 


  
  fill(white);  
  ellipse(-8, -30, 8, 12); 
  ellipse(8, -30, 8, 12);   

  // Pupils 
  fill(black);  
  ellipse(-8, -30, 4, 6);  
  ellipse(8, -30, 4, 6);    

  //  arms 
  stroke(ldb);
  strokeWeight(4);
  line(-15, 10, -25, 25);  
  line(15, 10, 25, 25);    

  //  legs 
  line(-10, 20, -10, 35);  
  line(10, 20, 10, 35);   

  popMatrix();
}
