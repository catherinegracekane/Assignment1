PShape bolt;
PShape bolt1;
PShape bolt2;
PShape bolt3;
int gameState = 0;

void setup()
{
  size(800, 500, P2D);
}
//frameSpeed is used to change the speed in the screen timeDelta
float frameSpeed = 0;
//frameChange will determine when the screen needs to change timeAccumulator
float frameChange = 0;

int end = 0;

void draw()
{
 
  int timeValue = millis();
  //need to calculate frameSpeed here
  frameSpeed = (timeValue - end) / 500.0f; 
  end = timeValue;
  
  //now the frameSpeed is calculated, change is used to determine what's on screen
  //according to these values
  frameChange += frameSpeed;
  
  //this is simply a checking mechanism **can remove**
  println("This is frameSpeed " + frameSpeed);
  println("This is frameChange" + frameChange);
  
  if (frameChange >= 1 && frameChange < 7)
  {
    fill(0);
    bolts();
  }
  if (frameChange >= 7 && frameChange < 8)
  {
    electricEye();
  }
  if (frameChange >= 10)
  {
    frameChange = 0;
  } 
  

}

void bolts ()
{
  if (mouseX >= 0 && mouseX <= width/2)
  {
    background(35, 189, 229);
  } else
  {
    background(23, 143, 175);
  }

  //first bolt - baby blue
  bolt = createShape();
  bolt.beginShape();
  bolt.strokeWeight(3);  
  bolt.stroke(0);
  bolt.fill(70, 201, 232);
  bolt.vertex(270, 0);
  bolt.vertex(320, 0); 
  bolt.vertex(85, 240);
  bolt.vertex(20, 295);
  bolt.endShape(CLOSE);

  //second bolt - red
  bolt1 = createShape();
  bolt1.beginShape();
  bolt1.stroke(#E53535);
  bolt1.fill(#E53535);
  bolt1.vertex(320, 0);
  bolt1.vertex(25, 290);
  bolt1.vertex(320, 200);
  bolt1.vertex(500, 0);
  bolt1.endShape(CLOSE);

  //third bolt - baby blue
  bolt2 = createShape();
  bolt2.beginShape();
  bolt2.strokeWeight(3);  
  bolt2.stroke(0);
  bolt2.fill(70, 201, 232);
  bolt2.vertex(230, 200);
  bolt2.vertex(70, height); 
  bolt2.vertex(120, height);
  bolt2.vertex(290, 180);
  bolt2.endShape(CLOSE);

  //fourth bolt - red
  bolt3 = createShape();
  bolt3.beginShape();
  bolt3.stroke(#E53535);
  bolt3.fill(#E53535);
  bolt3.vertex(290, 80);
  bolt3.vertex(120, height);
  bolt3.vertex(500, 125);
  bolt3.vertex(270, 210);
  bolt3.endShape(CLOSE);

  shape(bolt3);
  shape(bolt2);
  shape(bolt1);
  shape(bolt);
  //i want to make this change in size 
  textSize(50);
  text("MOONAGE", 450, 250);
  text("ENTERPRISES", 450, 300);
}

void electricEye() {

  background(51, 31, 237);
  fill(255);
  ellipse(width/2, height/2, width-200, width/4);
  fill(83, 102, 157);
  ellipse(width/2, height/2, 200, width/4-30);
}