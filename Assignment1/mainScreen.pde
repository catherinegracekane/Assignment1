//used to create lightning bolt
PShape bolt;
PShape bolt1;
PShape bolt2;
PShape bolt3;

void mainScreen ()
{
  //This is my main screen to show only when program begins
  
  /*if (mouseX >= 0 && mouseX <= width/2)
  {
    background(35, 189, 229);
  } else
  {
    background(23, 143, 175);
  }*/
  
  background(0);

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
  fill(255);
  text("MOONAGE", 450, 250);
  text("ENTERPRISES", 450, 300);
  
  textSize(75);
  text("CLICK HERE", width/2-100, height*0.85);
  
  
  gameState++;
}