void setup() {
  size(800, 600);
  background(0);
}

void draw() {
  
  cpLogo();
  grid();
  centreEye(); //in draw for radar method

}

//This is the "all seeing eye" at centre of screen
//I want a radar in the centre upon user instruction
//I want a grid and lightning bolts printed across
float x, y, eyeW, eyeH;

void centreEye() {
  x = width*0.7;
  y = height/2;
  eyeW = width*0.4; //eye width
  eyeH = height/4; //eye height
  stroke(47, 113, 38);
  fill(0);
  arc(x, y, eyeW, eyeH, -PI, 0); //top eye arc
  arc(x, y, eyeW, eyeH, 0, PI);  //bottom eye arc
  ellipse(x, y, eyeW/2, eyeH);  //first ellipse
  ellipse(x, y, eyeW/2-30, eyeH-30);  //second ellipse
  ellipse(x, y, eyeW/2-60, eyeH-60);  //third ellipse
  //I need to insert a radar in the centre, which is activated by user instruction
}

void grid() {
  
  x = width*0.7;
  y = height/2;
  eyeW = width*0.4; //used for rect width
  
  
  int yPos1, yPos2, xPos1, xPos2, xPos3; //used to draw the grid
  xPos1 = 400;
  xPos2 = 720;
  xPos3 = 400;
  yPos1 = 150;
  yPos2 = 450;

  
  stroke(31, 85, 23);
  fill(0);
  rectMode(CENTER);
  rect(x, y, eyeW, height/2, 7);
  
  for( int i = xPos1; i<xPos2; i+=20)
  {
    line(i, yPos1, i, yPos2); //vertical
    line(i, yPos2, xPos3+40, height);
    xPos3 += 40;
  }
  for(int j = yPos1; j < yPos2 ; j+=20)
  {
    line(xPos1, j, xPos2, j); //horizontal
  }
}

PShape logo;
//Control panel logo
void cpLogo(){
  
  logo = createShape();
  logo.beginShape();
  stroke(31, 85, 23);
  logo.fill(0);
  logo.vertex(width/2-30, 20);
  logo.vertex(width/2+30, 20);
  logo.vertex(width/2+80, 100);
  logo.vertex(width/2+50, 100);
  logo.vertex(width/2+30, 80);
  logo.vertex(width/2-30, 80);
  logo.vertex(width/2-50, 100);
  logo.vertex(width/2-80, 100);  
  logo.endShape(CLOSE);
  shape(logo);
  
}