int x = 255; //backgroundColor
int y = 1;
float R;
float G;
float B;
float t;

void setup(){
  size(500,400);
  strokeWeight(3);
}

void draw() {  
  
  //background
  background(x);
  x = changedBackColor(x);
  
  //Ecllipse
  makeFiveEllipse();
  
  //frame 
  frameRate(y);
  y = y+1;
  
  //EndText
  if(y>806){
    background(255);
    textSize(100);
    fill(0);
    text("End",height/2-40,width/2-50);
  }
 

}

int changedBackColor(int x){
  x = x-15; 
  if(x<0){
    x = 255;
  }
  return x;
}

void changedRGB(){
  R = random(0,255);
  G = random(0,255);
  B = random(0,255);
  t = random(0,255); 
}

void makeFiveEllipse(){
  
  changedRGB();
  stroke(0,129,200);
  fill(R,G,B,t);
  ellipse(250,150,150,150);
  
  changedRGB();
  stroke(252,177,49);
  fill(R,G,B,t);
  ellipse(400,150,150,150);
  
  changedRGB();
  stroke(0,0,0);
  fill(R,G,B,t);
  ellipse(350/2,225,150,150);
  
  changedRGB();
  stroke(0,166,81);
  fill(R,G,B,t);
  ellipse(650/2,225,150,150);
  
  changedRGB();
  stroke(238,51,78);
  fill(R,G,B,t);
  ellipse(100,150,150,150);
 
}
