import processing.sound.*;

SoundFile soundfile;

void setup() {
  size(640, 480, FX2D);
  
  setupMovie("Street.mp4"); 
  
  soundfile = new SoundFile(this, "moonlight.mp3"); //Moonlight Sonata 1st Movement by Beethoven
  println("SFSampleRate= " + soundfile.sampleRate() + " Hz");
  println("SFSamples= " + soundfile.frames() + " samples");
  println("SFDuration= " + soundfile.duration() + " seconds");
  
   soundfile.loop();
}

void draw() {  
  background(0);
  
  if (videoImg != null) {
    if (openCV == null) {
      setupOpenCV(videoImg);
    } else {
      updateOpenCV(videoImg);
    }

    image(openCV.getSnapshot(), 0, 0);
  } 
  
  surface.setTitle("" + frameRate);
  

  float amplitude = map(mouseY, 0, width, 0.2, 1.0);
  soundfile.amp(amplitude);

  float panning = map(mouseY, 0, height, -1.0, 1.0);
  soundfile.pan(panning);
}
