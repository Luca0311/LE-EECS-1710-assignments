class Explosion {
 
  PVector position;
  boolean alive = true;
  int timestamp;
  int lifetime = 200;
  
  Explosion(float x, float y) {
    timestamp = millis();
    position = new PVector(x, y);
  }
  
  void update() {
    if (alive && millis() > timestamp + lifetime) alive = false;
  }
  
  void draw() {
    pushMatrix();
    translate(position.x, position.y);
    rotate(radians(random(360)));
    image(explosionImg, 0, 0);
    popMatrix();
    noStroke();
    fill(random(50), random(50), 0);
    float sizeVal = 100 + random(-50, 50);
    ellipse(position.x, position.y, sizeVal, sizeVal);
  }
  
  void run() {
    update();
    draw();
  }
  
}
