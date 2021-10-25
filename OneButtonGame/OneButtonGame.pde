//instructions: 
//aim and elminate the opponent spaceships
//Press "F" to fire
//move your mouse around in order to activate the UFO's ability to colour change all players

float gravity = 0.4;
float gravityDelta = 0.01;
float friction = 0.99;
float floor;

Cannon cannon;
ArrayList<opponent> planes;
ArrayList<Explosion> explosions;
int carInterval = 1000;
int markTime = 0;
boolean debug = true;
color debugColor = color(255, 127, 0);

PImage gifimg;
PImage explosionImg;

import gifAnimation.*;

Gif gif;

void setup() {
  size(800, 600, P2D);
  floor = height;
  gif = new Gif(this, "ufo.gif");
  gif.loop();
  gif.play();
  imageMode(CENTER);
  noCursor();
  
  cannon = new Cannon(width/2, height - 100);
  planes = new ArrayList<opponent>();
  explosions = new ArrayList<Explosion>();

  explosionImg = loadImage("bulleteffect.png");
  explosionImg.resize(256, 256);
  imageMode(CENTER);
}

void draw() {
  background(0,10);
  image(gif, mouseX, mouseY, 128, 128);
  fill(#F8E3FF);
  ellipse(random(width), random(height), 5, 5); //*BACKGROUND STARS*
  // source: https://www.youtube.com/watch?v=UVXlrBwlp80 "Creating Stars In Processing"
  
  int t = millis();
  
  if (t > markTime + carInterval) {
    planes.add(new opponent());
    markTime = t;
  }
    
  cannon.run();
    
  for (int i=planes.size()-1; i>=0; i--) {
    opponent plane = planes.get(i);
    
    if (plane.alive) {
      plane.run();
    } else {
      planes.remove(i);
    }
  }
  
  for (int i=explosions.size()-1; i>=0; i--) {
    Explosion explosion = explosions.get(i);
    
    if (explosion.alive) {
      explosion.run();
    } else {
      explosions.remove(i);
    }
  }
  
  println("Number of lasers: " + cannon.lasers.size());
  
  surface.setTitle("" + frameRate);
}

boolean hitDetectRect(PVector p1, PVector p2, PVector hitbox) {
  hitbox = hitbox.copy().div(2);
  
  if (p1.x >= p2.x - hitbox.x && p1.x <= p2.x + hitbox.x && p1.y >= p2.y - hitbox.y && p1.y <= p2.y + hitbox.y) {
    return true;
  } else {
    return false;
  }
}
