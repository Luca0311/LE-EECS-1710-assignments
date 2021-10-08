Integer food = 60;
PVector[] position, target;
boolean isRunning = false;
PImage img;


import gifAnimation.*;

Gif gif;

void setup() { 
  size(1280, 720);
  position = new PVector[food];
  target = new PVector[food];
  gif = new Gif(this, "butterfly.gif");
  gif.loop();
  gif.play();
  imageMode(CENTER);
  noCursor();

  for (int i=0; i<food; i++){
    position[i] = new PVector(width/2, height/2);
    target[i] = new PVector(random(width), random(height));  
 
  }
  ellipseMode(CENTER);
}

void draw() {
  background(img = loadImage("magic.jpg"));
  image(gif, mouseX, mouseY, 128, 128);
  for(int i=0; i<food; i++){
    PVector mousePos = new PVector(mouseX, mouseY);
    
    isRunning = position[i].dist(mousePos) < 100;
    for (int j=0; j<food; j++){
      if (i == j){
        continue;
      }
      isRunning = isRunning || (position[i].dist(position[j])< 0.08);
    }
    
    if (isRunning) {
      position[i] = position[i].lerp(target[i], 1);
      if (position[i].dist(target[i]) < 5) {
        target[i] = new PVector(random(width), random(height));
      }
    }
    
    ellipse(position[i].x, position[i].y, 20, 20);
    if(mousePressed && (mouseButton == LEFT))
    fill(random(0,255), random(0, 255), random(0, 255));
  }
}
