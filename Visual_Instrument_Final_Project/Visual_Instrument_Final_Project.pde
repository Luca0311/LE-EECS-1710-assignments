//*NOTE:
//WHEN RUNNING THE CODE, ENSURE YOU CLICK THE MOUSE ONCE ON THE DISPLAY SCREEN TO PROJECT THE INSTRUCTIONS
//READ THE INSTRUCTIONS FIRST BEFORE STARTING THE INSTRUMENT 
PImage gifimg;
ArrayList<Contrail> trails;
int marktime = 0;
int timeout = 1000;
color bColor = color(255, 255, 255);

import gifAnimation.*;

Gif gif;

void setup() {
  size(800, 600, P2D);
  setupXYscope();
  gif = new Gif(this, "robot.gif");
  gif.loop();
  gif.play();
  imageMode(CENTER);
  noCursor();
  
  trails = new ArrayList<Contrail>();
}

void draw() {
  background(bColor);
  image(gif, mouseX, mouseY, 128, 128);

  updateXYscope();
  
  for (int i=trails.size()-1; i >= 0; i--) {
    Contrail Contrail = trails.get(i);
    Contrail.run();
    if (!Contrail.alive) trails.remove(i);
  }
  
  if (millis() > marktime + timeout) {
    xy.clearWaves();
  }

  surface.setTitle("" + frameRate);
  
  float amplitude = map(mouseY, 0, height, 1.0, 0.0);
  xy.amp(amplitude);

  // Map mouseX from 20Hz to 1000Hz for frequency
  float frequency = map(mouseX, 0, width, 20.0, 1000.0);
  xy.freq(frequency);
  
  textSize(20);
  text("Mikey The Singing Robot", 0, 20);
  text("Click and Drag the mouse to hear Mikey's instrument", 0, 40);
  text("While dragging the mouse notice the colour changing contrail Mikey leaves behind",0, 60);
  text("Each time you release the mouse Mikey's instrument will stop playing", 0, 80);
  text("The location you choose to move Mikey to, will affect his instrument's sound",0, 100);
}
