PImage img1, img2, img3;
PVector pos1, pos2;
Integer pos;
float circleSize = 50;

void setup() {
  size(728, 582, P2D);
  
  img1= loadImage("PurpleNeon.jpeg");
  img2= loadImage("SunsetRetro.png");
  
  pos1= new PVector(300, 300);
  pos2 = new PVector(width, height);
  pos = 0;
}

void draw(){
  imageMode(CORNER);
  image(img1, 0, 0, width, height);
  
  pos = pos + 2;
  if(pos > 700){
    pos = 0;
  }
  
  imageMode(CENTER);
  image(img2, 364, pos, 300, 300);{
  ellipseMode(CENTER);
  rectMode(CENTER);
  fill(#F6FF00);
  stroke(#FF00FB);
  line(mouseX, mouseY, pmouseX, pmouseY);
  ellipse(mouseX, mouseY, circleSize, circleSize);
  }
}
