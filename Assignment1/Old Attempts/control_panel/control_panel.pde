void setup() {
  size(800, 600);
  background(0);
}

void draw() {
  
  cpLogo();
  crewData();
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
  strokeWeight(1);
  fill(0);
  rectMode(CENTER);
  rect(x, y, eyeW, height/2, 7);
  
  for( int i = xPos1; i<xPos2+1; i+=20)
  {
    line(i, yPos1, i, yPos2); //vertical
    line(i, yPos2, xPos3+35, height);
    xPos3 += 40;
  }
  for(int j = yPos1; j < yPos2 ; j+=20)
  {
    line(xPos1, j, xPos2, j); //horizontal
  }
}

void crewData(){

  stroke(31, 85, 23);
  fill(0);
  rectMode(CENTER);
  rect(width/5, height/2+65, width/3, height-175, 7); //outer rect
  line((width/5)-(width/6), height/2-97, (width/5)+(width/6), height/2-97);
  int a;
  a=77;
  strokeWeight(3);
  stroke(193,190,189);
  fill(39,247,25);
  ellipse(a, 95, 30, 30);  //3 alarm buttons
  fill(183,129,42);
  ellipse(a+80, 95, 30, 30);  //3 alarm buttons
  fill(170,50,39);
  ellipse(a+160, 95, 30, 30);  //3 alarm buttons
}

PShape logo;
//Control panel logo
void cpLogo(){
  
  strokeWeight(3);
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