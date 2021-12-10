class Contrail {
  
  ArrayList<PVector> points;
  color col = color(127, 0, 255);
  color newCol;
  float lerpSpeed = 0.5;
  int lifetime = 1000;
  int timestamp = 0;
  boolean alive = true;
  
  Contrail() {
    points = new ArrayList<PVector>();
    timestamp = millis();
  }
  
  void update() {
    if (millis() > timestamp + lifetime) {
      alive = false;
    }
  }
  
  void draw() {
    for (int i=0; i<points.size(); i++) {
      PVector p = points.get(i);
      p.x += random(5) - random(5);
      strokeWeight(random(10, 20));
      point(p.x, p.y);
      if (i > 0) {
        PVector p2 = points.get(i-1);
        strokeWeight(2);
        line(p.x, p.y, p2.x, p2.y);
        float r = map(mouseX, 0, width, 0, 255); 
  float g = map(mouseY, 0, height, 0, 255); 
  newCol = color(r, g, 255);
   pushMatrix(); 
    col = lerpColor(col, newCol, lerpSpeed);
    translate(p.x, p.y);
    rectMode(CENTER);
    fill(col);
    rect(0, 0, 10, 10);
    popMatrix();

      }
    }
  }
  
  void run() {
    update();
    draw();
  }
} 
