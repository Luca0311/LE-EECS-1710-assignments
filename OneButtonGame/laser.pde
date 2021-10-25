class laser {
  
  PVector position;
  float rot;
  int timestamp;
  float velocity = 20;
  boolean alive = true;
  int lifetime = 1000;

  laser(float x, float y, float _rot) {
    position = new PVector(x, y);
    rot = _rot;
    timestamp = millis();
  }
   
  void update() {
    // https://www.emanueleferonato.com/2007/04/28/create-a-flash-artillery-game-step-1/
    position.x += velocity * sin(radians(rot));
    position.y -= velocity * cos(radians(rot));
    
    // set lasers past their lifetime as not alive so they can be removed
    if (alive && millis() > timestamp + lifetime) alive = false;
  }
  
  void draw() {
    stroke(0);
    if (random(1) < 0.5) {
      fill(#00FCFA);
    } else {
      fill(#0F00FC);
    }
    rect(position.x, position.y, 15, 15);
  }
  
  void run() {
    update();
    draw();  
  }
  

}
