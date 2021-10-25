class opponent {
  
  boolean isLeft;
  PVector position, target;
  float movementSpeed = 0.01;
  float xMargin = 500;
  float yMargin = 150;
  boolean alive = true;
  PVector opponentSize = new PVector(150, 40);
  color col = color(0, 70, 70);
  color newCol;
  float lerpSpeed = 0.05;

  opponent() {
    float pickSide = random(1);
    float y = random(yMargin, height-yMargin*2);
    float x1, x2;
    if (pickSide < 0.5) {
      isLeft = true;
      x1 = -xMargin;
      x2 = width + xMargin;
    } else {
      isLeft = false;
      x1 = width + xMargin;
      x2 = -xMargin;
    }
    position = new PVector(x1, y);  
    target = new PVector(x2, y);  
  }
  
  void update() {
    if (position.dist(target) < 5) alive = false;
    
    for (laser laser : cannon.lasers) {
      if (alive && hitDetectRect(position, laser.position, opponentSize)) {
        alive = false;
        explosions.add(new Explosion(position.x, position.y));
      }
    }
    
    if (alive) position.lerp(target, movementSpeed);
  }
  
  void draw() {
    ellipseMode(CENTER);
    ellipse(position.x, position.y, opponentSize.x, opponentSize.y);
      float r = map(mouseX, 0, width, 0, 255); 
  float g = map(mouseY, 0, height, 0, 255); 
     newCol = color(r, g, 255);
  
  col = lerpColor(col, newCol, lerpSpeed);
  
  fill(col);
    
    if (debug) {
      noStroke();
   
      
 
    
    }
  }
  
  void run() {
    update();
    draw();
  }
} 
