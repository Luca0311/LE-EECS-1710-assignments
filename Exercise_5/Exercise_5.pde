// NOTE: Move mouse around to amplify or deafen audio 
ArrayList myCircles;
int circleRadius = 30;
float ballSpeed = 1;
boolean ballHit;
int jiggle = 4;

import processing.sound.*;

SoundFile soundfile;

void setup() {
  size(800, 600);
  smooth();
  textAlign(CENTER);
  myCircles = new ArrayList();
  myCircles.add(new Circle(random(width), random(height)));
  
  soundfile = new SoundFile(this, "Galaxy.wav");
  
  println("SFSampleRate= " + soundfile.sampleRate() + " Hz");
  println("SFSamples= " + soundfile.frames() + " samples");
  println("SFDuration= " + soundfile.duration() + " seconds");
  
  soundfile.loop();
}

void draw() {
  background(0,10);
  fill(#F8E3FF);
  ellipse(random(width), random(height), 7, 7); 
  fill(255, 10);
  rect(0, 0, width, height);
  
  
  float amplitude = map(mouseY, 0, width, 0.2, 1.0);
  soundfile.amp(amplitude);
  
  float panning = map(mouseY, 0, height, -1.0, 1.0);
  soundfile.pan(panning);

  if (frameCount > 60*ballSpeed) {
    myCircles.add(new Circle(random(width), random(height)));
    if (ballSpeed > 0.5)
      ballSpeed -= 0.05;
    frameCount = 0;
  }

  for (int i=0; i < myCircles.size(); i++) {
    Circle myCircle = (Circle) myCircles.get(i);
    myCircle.drawCircle();
  }
}


class Circle {
  float circleX;
  float circleY;
  int circleSize = circleRadius*2;
  int alph = 0;
  float r = random(150);
  float g = random(150);
  float b = random(150);

  Circle(float tempX, float tempY) {
    circleX = tempX;
    circleY = tempY;
  }

  void drawCircle() {
    fill(r, g, b, alph);
    noStroke();

    circleX += (mouseX - circleX) * 0.05;
    circleY += (mouseY - circleY) * 0.05;


    ellipse(circleX, circleY, circleSize, circleSize);
    alph += 10;
  }
}

//Sources
//Script voiced by me 
//Script read from NASA: https://solarsystem.nasa.gov/solar-system/our-solar-system/overview/
//Background music by Daft Punk: https://youtu.be/mqgEYRtWMJU
//My voiceover and daft punk's background music was mixed using fl studio 
