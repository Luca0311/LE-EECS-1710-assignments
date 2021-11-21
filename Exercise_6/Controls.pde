int thresholdDelta = 10;

void keyPressed() {
  switch(keyCode) {
    case UP:
      threshold += thresholdDelta;
      break;
    case DOWN:
      threshold -= thresholdDelta;
      break;
  }
  
  threshold = constrain(threshold, 0, 255);
  
  println("threshold: " + threshold);
}
