class Cannon {

  PVector position;
  float rot = 0;
  float rotDelta = 2;
  ArrayList<laser> lasers;
  color col = color(127, 0, 255);
  color newCol;
  float lerpSpeed = 0.5;

  
  Cannon(float x, float y) {
    position = new PVector(x, y);
    lasers = new ArrayList<laser>();
  }
  
  void update() {
    rot += rotDelta;    
    if (rot < -45 || rot > 45) rotDelta *= -1;  
    
    for (int i=lasers.size()-1; i>=0; i--) {
      laser laser = lasers.get(i);
      if (laser.alive) {
        laser.run();
      } else {
        lasers.remove(i);
      }
    }
  }
  
  void fire() {
    lasers.add(new laser(position.x, position.y, rot));
  }
  
  void draw() {
float r = map(mouseX, 0, width, 0, 255); 
  float g = map(mouseY, 0, height, 0, 255); 
  newCol = color(r, g, 255);
    pushMatrix(); 
    col = lerpColor(col, newCol, lerpSpeed);
    translate(position.x, position.y);
    rotate(radians(rot));
    ellipseMode(CENTER);
    fill(col);
    ellipse(0, 0, 50, 100);
    popMatrix();
  }
  
  void run() {
    update();
    draw();
  }

}
