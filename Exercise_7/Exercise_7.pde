PImage img;
PGraphics pg;

void setup() {
  size(800, 600, P2D);
  
  img = loadImage("palm.jpeg");
  
  pg = createGraphics(img.width/10, img.height/10, P2D);
}

void draw() {
  background(#FF03FB);
  
  pushMatrix();
  scale(2.0);
  pg.beginDraw();
  pg.image(img, 0, 0, pg.width, pg.height);
  pg.filter(DILATE);
  pg.filter(OPAQUE);
  pg.filter(INVERT);
  pg.endDraw();
  
  image(pg, 15, 0);
  popMatrix();
  
  image(img, 200, 0);
}
