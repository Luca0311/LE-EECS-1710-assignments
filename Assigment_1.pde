Integer numCreatures = 50;
PVector[] position, target;
boolean isRunning = false;
PImage img;

void setup() { 
  size(728, 546);
  position = new PVector[numCreatures];
  target = new PVector[numCreatures];

  for (int i=0; i<numCreatures; i++){
    position[i] = new PVector(width/2, height/2);
    target[i] = new PVector(random(width), random(height));  
 
  }
  ellipseMode(CENTER);
}

void draw() {
  background(img = loadImage("broken glass.jpeg"));
  for(int i=0; i<numCreatures; i++){
    PVector mousePos = new PVector(mouseX, mouseY);
    
    isRunning = position[i].dist(mousePos) < 100;
    for (int j=0; j<numCreatures; j++){
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
