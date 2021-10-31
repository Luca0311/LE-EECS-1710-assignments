//*NOTE: BEFORE ENTERING A CERTAIN CHARACTER, MAKE SURE TO USE THE ALPHABET TAB AS REFERENCE
//THIS IS BECAUSE SOME LETTERS ARE IN LOWER CASE WHILE OTHERS ARE UPPER CASE
//THEREFORE SOME LETTERS NEED TO BE ENTERED IN THEIR UPPERCASE FORM WHILE OTHERS IN LOWER CASE

myCharacter ch;

PImage img;

void setup() {
  size(800, 600, P2D);
  ch = new myCharacter('F');
}

void draw() {
  background(img = loadImage("gradient.jpeg"));;
  ch.draw();}
 
  
  //*VIEW COORDINATES 
  void mousePressed(){
  ellipse( mouseX, mouseY, 2, 2 );
  text( "x: " + mouseX + " y: " + mouseY, mouseX + 2, mouseY );
}
