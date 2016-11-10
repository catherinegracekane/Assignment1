//This is the "all seeing eye" at centre of screen
//I want a radar function in the centre upon user instruction
class Eye {

  float x;
  float y;
  float eyeW; //eye width
  float eyeH; //eye height

  //constructor
  Eye()
  {
    x  = width*0.7;
    y  = height/2;
    eyeW = width*0.4;
    eyeH = height/4;
  }
  
  //display function
  void display()
  {
    stroke(47, 113, 38);
    fill(0);
    arc(x, y, eyeW, eyeH, -PI, 0); //top eye arc
    arc(x, y, eyeW, eyeH, 0, PI);  //bottom eye arc
    ellipse(x, y, eyeW/2, eyeH);  //first ellipse
    ellipse(x, y, eyeW/2-30, eyeH-30);  //second ellipse
    ellipse(x, y, eyeW/2-60, eyeH-60);  //third ellipse
  }
}