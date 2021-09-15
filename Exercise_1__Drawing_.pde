color bgColor = color(0, 0, 0);
float circleSize= 50;

void setup () {
  size(800, 800, P2D);
  background(bgColor);
}

void draw() {
  if (mousePressed) {
  ellipseMode(CENTER);
  rectMode(CENTER);
  fill(0, 0, 0);
  stroke(3, 255, 253);
  line(mouseX, mouseY, pmouseX, pmouseY);
  ellipse(mouseX, mouseY, circleSize, circleSize);
  }
}
