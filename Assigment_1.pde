boolean debug = true;
PVector position, target;
PImage faceCurrent, face01, face02, face03, face04;
float margin = 50;

boolean isBothered = false;
int botheredMarkTime = 0;
int botheredTimeout = 3000; // Processing measures time in milliseconds
float botheredSpread = 5;

boolean isBlinking = false;
int blinkMarkTime = 0;
int blinkTimeout = 4000;
int blinkDuration = 250;

float triggerDistance1 = 100;
float triggerDistance2 = 5;
float movementSpeed = 0.08;



void setup() { 
  size(800, 600, P2D);
  
  position = new PVector(width/2, height/2);
  pickTarget();
  
  face01 = loadImage("Toboggan.png");
  face02 = loadImage("SnowBoard.png");
  face03 = loadImage("SnowAngel.png");
  face04 = loadImage("Skiing.png");
  
  faceCurrent = face01;
  
  ellipseMode(CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
}

void draw() {
  background(#FFFFFF);
  
 
  PVector mousePos = new PVector(mouseX, mouseY);
  isBothered = position.dist(mousePos) < triggerDistance1;
  
  if (isBothered) {
    botheredMarkTime = millis();
    faceCurrent = face02; // worried expression
    position = position.lerp(target, movementSpeed).add(new PVector(random(-botheredSpread, botheredSpread), random(-botheredSpread, botheredSpread)));
    if (position.dist(target) < triggerDistance2) {
      pickTarget();
    }
  } else if (!isBothered && millis() > botheredMarkTime + botheredTimeout) {
    if (!isBlinking && millis() > blinkMarkTime + blinkTimeout) {
      isBlinking = true;
      blinkMarkTime = millis();
    } else if (isBlinking && millis() > blinkMarkTime + blinkDuration) {
      isBlinking = false;
    }

    if (isBlinking) {
      faceCurrent = face04; // blink with happy expression
    } else {
      faceCurrent = face03; // happy expression
    }    
  } else if (!isBothered && millis() > botheredMarkTime + botheredTimeout/6) {
    faceCurrent = face01; // neutral expression
  }

  position.y += sin(millis()) / 2;

  image(faceCurrent, position.x, position.y);

  if (debug) {
    noFill();
    stroke(#00F4FF);
    ellipse(position.x, position.y, triggerDistance1*2, triggerDistance1*2);
    ellipse(position.x, position.y, triggerDistance2*2, triggerDistance2*2);
    line(target.x, target.y, position.x, position.y);
    stroke(255, 0, 0);
     rect(target.x, target.y, 10, 10);
  }
}

void pickTarget() {
  target = new PVector(random(margin, width-margin), random(margin, height-margin));
}
