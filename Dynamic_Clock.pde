float x = width + height;
void setup(){
  size(400, 400);
  surface.setResizable(true);
}

void draw(){
  float x = width + height;
  translate(width/2,height/2);
  background(0);
  rotate(-33);
  noFill();
  
  stroke(255,100,150);
  strokeWeight(8);
  float s = map(second(), 0, 60, 0, 2*PI);
  arc(0, 0, height/1.25,width/1.25,0,s);
  
  stroke(150,100,255);
  float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI);
  arc(0, 0, height/1.35,width/1.35,0,m);
  
  stroke(150,255,100);
  float h = map(hour() % 12 + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2);
  arc(0, 0, height/1.45,width/1.45,0,h);
  
  pushMatrix();
  rotate(h);
  stroke(0,255,0);
  line(0,0,x/16,0);
  popMatrix();
  
  pushMatrix();
  rotate(m);
  stroke(0,0,255);
  line(0,0,x/12,0);
  popMatrix();
  
  pushMatrix();
  rotate(s);
  stroke(255,0,0);
  line(0,0,x/8,0);
  popMatrix();
  
  stroke(255);
  point(0,0);
}