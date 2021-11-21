import gab.opencv.*;

OpenCV openCV;

int threshold = 50;
boolean armOpenCvUpdate = false;
int scaler = 5;

void setupOpenCV(PImage img) { 
  openCV = new OpenCV(this, img);
}

void updateOpenCV(PImage img) {
  if (armOpenCvUpdate) {
    openCV.loadImage(img);
    openCV.gray();
    openCV.threshold(threshold);
    armOpenCvUpdate = false;
  }
}
