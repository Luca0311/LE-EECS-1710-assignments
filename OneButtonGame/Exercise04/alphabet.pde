class myCharacter {
  ArrayList<BezierCurve> strokes;// = new ArrayList<BezierCurve>();
  
  myCharacter (char c) {
    strokes = new ArrayList<BezierCurve>();
    switch (c) {
      case 'a':
        strokes.add(new BezierCurve(new PVector(200, 100), 
          new PVector(500, 50),
          new PVector(400, 400)));
        strokes.add(new BezierCurve(new PVector(420, 180), 
          new PVector(100, 150),
          new PVector(100, 430),
          new PVector(400, 350)));
        break;
      
      case 'b':
        strokes.add(new BezierCurve(new PVector(100, 100), 
          new PVector(100, 200),
          new PVector(100, 500)));
        strokes.add(new BezierCurve(new PVector(100, 350), 
          new PVector(300, 350),
          new PVector(300, 500),
          new PVector(100, 500)));
        break;
        
        case 'c':
        strokes.add(new BezierCurve(new PVector(420, 180), 
          new PVector(100, 150),
          new PVector(100, 430),
          new PVector(400, 350)));
        break;

        case 'd':
        strokes.add(new BezierCurve(new PVector(400, 100), 
          new PVector(400, 200),
          new PVector(400, 500)));
        strokes.add(new BezierCurve(new PVector(400, 350), 
          new PVector(200, 350),
          new PVector(200, 500),
          new PVector(400, 500)));
        break;
        
          case 'e':
        strokes.add(new BezierCurve(new PVector(420, 180), 
          new PVector(100, 150),
          new PVector(100, 430),
          new PVector(400, 350)));
       strokes.add(new BezierCurve(new PVector(420, 180), 
          new PVector(100, 300),
          new PVector(200, 300)));
        break;
        
          case 'F':
          strokes.add(new BezierCurve(new PVector(400, 100), 
          new PVector(400, 200),
          new PVector(400, 500)));
        strokes.add(new BezierCurve(new PVector(400, 100), 
          new PVector(500, 100),
          new PVector(600, 100)));
        strokes.add(new BezierCurve(new PVector(400, 250), 
          new PVector(500, 250),
          new PVector(600, 250)));
        break;
        
        case 'g':
        strokes.add(new BezierCurve(new PVector(420, 180), 
          new PVector(500, 200),
          new PVector(310, 540)));
        strokes.add(new BezierCurve(new PVector(420, 180), 
          new PVector(100, 150),
          new PVector(100, 430),
          new PVector(400, 350)));
        break;
        
        case 'H':
        strokes.add(new BezierCurve(new PVector(400, 100), 
          new PVector(400, 200),
          new PVector(400, 500)));
        strokes.add(new BezierCurve(new PVector(400, 250), 
          new PVector(500, 250),
          new PVector(600, 250)));
        strokes.add(new BezierCurve(new PVector(600, 100), 
          new PVector(600, 250),
          new PVector(600, 500)));
        break;
        
         case 'I':
         strokes.add(new BezierCurve(new PVector(400, 100), 
          new PVector(400, 200),
          new PVector(400, 500)));
        strokes.add(new BezierCurve(new PVector(200, 100), 
          new PVector(400, 100),
          new PVector(600, 100)));
        strokes.add(new BezierCurve(new PVector(200, 500), 
          new PVector(400, 500),
          new PVector(600, 500)));
        break;
        
        case 'J':
        strokes.add(new BezierCurve(new PVector(200, 100), 
          new PVector(400, 100),
          new PVector(600, 100)));
        strokes.add(new BezierCurve(new PVector(400, 100), 
          new PVector(410, 350),
          new PVector(300, 500)));
        break;
        
        case 'k':
        strokes.add(new BezierCurve(new PVector(400, 100), 
          new PVector(400, 200),
          new PVector(400, 500)));
        strokes.add(new BezierCurve(new PVector(400, 250), 
          new PVector(502, 164),
          new PVector(600, 100)));
        strokes.add(new BezierCurve(new PVector(400, 250), 
          new PVector(520, 390),
          new PVector(600, 500)));
        break;
        
         case 'L':
         strokes.add(new BezierCurve(new PVector(400, 100), 
          new PVector(400, 200),
          new PVector(400, 500)));
        strokes.add(new BezierCurve(new PVector(400, 500), 
          new PVector(500, 500),
          new PVector(600, 500)));
        break;
        
         case 'M':
        strokes.add(new BezierCurve(new PVector(300, 100), 
          new PVector(300, 200),
          new PVector(300, 500)));
        strokes.add(new BezierCurve(new PVector(300, 100), 
          new PVector(400, 220),
          new PVector(450, 275)));
        strokes.add(new BezierCurve(new PVector(600, 100), 
          new PVector(500, 220),
          new PVector(450, 275)));
        strokes.add(new BezierCurve(new PVector(600, 100), 
          new PVector(600, 250),
          new PVector(600, 500)));
        break;
        
         case 'N':
        strokes.add(new BezierCurve(new PVector(300, 100), 
          new PVector(300, 200),
          new PVector(300, 500)));
        strokes.add(new BezierCurve(new PVector(300, 100), 
          new PVector(390, 220),
          new PVector(600, 500)));
        strokes.add(new BezierCurve(new PVector(600, 100), 
          new PVector(600, 250),
          new PVector(600, 500)));
        break;
        
         case 'o':
        strokes.add(new BezierCurve(new PVector(375, 180), 
          new PVector(470, 260),
          new PVector(354, 360)));
        strokes.add(new BezierCurve(new PVector(375, 180), 
          new PVector(200, 110),
          new PVector(200, 410),
          new PVector(354, 360)));
        break;
        
         case 'P':
        strokes.add(new BezierCurve(new PVector(100, 100), 
          new PVector(100, 200),
          new PVector(100, 500)));
        strokes.add(new BezierCurve(new PVector(100, 100), 
          new PVector(300, 100),
          new PVector(300, 250),
          new PVector(100, 250)));
        break;
    
     case 'q':
        strokes.add(new BezierCurve(new PVector(400, 200), 
          new PVector(400, 350),
          new PVector(400, 500)));
        strokes.add(new BezierCurve(new PVector(400, 200), 
          new PVector(200, 200),
          new PVector(200, 350),
          new PVector(400, 350)));
          break;
      
      case 'R':
        strokes.add(new BezierCurve(new PVector(100, 100), 
          new PVector(100, 200),
          new PVector(100, 500)));
        strokes.add(new BezierCurve(new PVector(100, 100), 
          new PVector(300, 100),
          new PVector(300, 250),
          new PVector(100, 250)));
        strokes.add(new BezierCurve(new PVector(100, 250), 
          new PVector(206, 295),
          new PVector(300, 500)));
        break;
        
        case 's':
        strokes.add(new BezierCurve(new PVector(420, 180), 
          new PVector(400, 150),
          new PVector(100, 430),
          new PVector(400, 350)));
        strokes.add(new BezierCurve(new PVector(400, 350), 
          new PVector(550, 320),
          new PVector(550, 600),
          new PVector(380, 520)));
        break;
         case 'T':
        strokes.add(new BezierCurve(new PVector(400, 100), 
          new PVector(400, 200),
          new PVector(400, 500)));
        strokes.add(new BezierCurve(new PVector(200, 100), 
          new PVector(400, 100),
          new PVector(600, 100)));
        break;
         
         case 'u':
        strokes.add(new BezierCurve(new PVector(300, 150), 
          new PVector(500, 430),
          new PVector(0, 430),
          new PVector(100, 150)));
        break;
        
        case 'v':
        strokes.add(new BezierCurve(new PVector(400, 300), 
          new PVector(400, 400),
          new PVector(500, 500)));
        strokes.add(new BezierCurve(new PVector(600, 300), 
          new PVector(600, 400),
          new PVector(500, 500)));
        break;
        
        
         case 'w':
        strokes.add(new BezierCurve(new PVector(200, 100), 
          new PVector(200, 200),
          new PVector(200, 500)));
        strokes.add(new BezierCurve(new PVector(200, 500), 
          new PVector(300, 400),
          new PVector(400, 275)));
        strokes.add(new BezierCurve(new PVector(600, 500), 
          new PVector(500, 400),
          new PVector(400, 275)));
        strokes.add(new BezierCurve(new PVector(600, 100), 
          new PVector(600, 250),
          new PVector(600, 500)));
        break;
        
          case 'x':
        strokes.add(new BezierCurve(new PVector(400, 350), 
          new PVector(420, 400),
          new PVector(600, 600)));
        strokes.add(new BezierCurve(new PVector(600, 350), 
          new PVector(580, 400),
          new PVector(400, 600)));
        break;
        
         case 'Y':
        strokes.add(new BezierCurve(new PVector(400, 350), 
          new PVector(420, 400),
          new PVector(500, 500)));
        strokes.add(new BezierCurve(new PVector(600, 350), 
          new PVector(580, 400),
          new PVector(500, 500)));
        strokes.add(new BezierCurve(new PVector(500, 500), 
          new PVector(500, 550),
          new PVector(500, 600)));
        break;
        
        case 'Z':
         strokes.add(new BezierCurve(new PVector(600, 100), 
          new PVector(450, 200),
          new PVector(200, 500)));
        strokes.add(new BezierCurve(new PVector(200, 100), 
          new PVector(400, 100),
          new PVector(600, 100)));
        strokes.add(new BezierCurve(new PVector(200, 500), 
          new PVector(400, 500),
          new PVector(600, 500)));
        break;
        
        
  
    }
    //strokes.add(new BezierCurve(new PVector(100, 100), 
    //new PVector(100, 600),
    //new PVector(400, 400)));
  }
  
  void draw() {
    for (int i =0; i<strokes.size(); i++) {
      strokes.get(i).draw();
    }
  }
}
