void mouseDragged() {
  xy.line(mouseX, mouseY, pmouseX, pmouseY);
  
  if (trails.size() > 0) {
    Contrail Contrail = trails.get(trails.size()-1);
    Contrail.points.add(new PVector(mouseX, mouseY));
    Contrail.timestamp = millis();
  }

  marktime = millis();
}

void keyPressed() {
  if (keyCode == 8) { 
    xy.clearWaves();
  }
}

void mousePressed() {
  Contrail Contrail = new Contrail();
  trails.add(Contrail);
  bColor = color(random(255), random(255), random(255));
}

void mouseReleased() {
  //
}
