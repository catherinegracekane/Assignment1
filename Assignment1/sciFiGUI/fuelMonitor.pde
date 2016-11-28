static final int TRIANGLE = 5;
static final int LINES = 4;

class Fuel 
{

  PVector position;
  PShape upArrow, downArrow;
  int a, b, c, d, i, j, tw, sec, fillColour;
  int spacing, triSpace; //spacing for the text, spacing for the triangles
  float dial, z;
  String[] mars, jupiter, saturn;

  //constructor
  Fuel() {

    position = new PVector(width/2, (height/2)-50); //start in centre

    mars = loadStrings("mars.txt");
    jupiter = loadStrings("jupiter.txt");
    saturn = loadStrings("saturn.txt");

    a = 405;
    b = 393;
    c = 401;
    d = 296; //triangle x 
    i = 0;
    spacing = 49;
    triSpace = 18;
    tw = 125; //text width spacing
    fillColour = 0;
    //splitz = split(mars[i], " ");
  }

  void display() {

    //dial
    sec = second();
    dial = 360 / 60 * sec;  
    strokeWeight(0.5);
    stroke(21, 232, 79);
    if (mousePressed)
    {
      if (mouseX > position.x-25 && mouseX < position.x + 20 && mouseY > position.y -25 && mouseY < position.y+20)
      {
        pushMatrix();
        translate(position.x, position.y);
        rotate(radians(dial));
        line(0, 0, 0, -120);
        popMatrix();

        fill(255);
        text("LOCATION " + dial+ " " + " AREA CLEAR", (width*0.625)+135, (height*0.69)+80);


        if (dial > 0 && dial < 151)
        {
          textSize(10);
          text( ( dial*340) + " MPS:", (width*0.625)-(tw*0.4), (height*0.69)+95);          
          text( "Current speed " + ( dial*340) + " MPS:", (width*0.625)-tw, (height*0.69)+95);
          //text( " we have entered Jupiter ", (width*0.625)-tw, (height*0.69)+110);

          for (i = 0; i < LINES; i++)
          {
            for (j = 0; j < (LINES*spacing); j+=spacing)
            {
              textSize(12);
              text(jupiter[i] + "\t", 165, 320+j); 
              //println(jupiter[i]);
              i = i+1;
            }
          }
        }
        if (dial > 150 && dial < 251)
        {
          textSize(10);
          text( ( dial*340) + " MPS:", (width*0.625)-(tw*0.4), (height*0.69)+95);
          //text( " we have entered Mars ", (width*0.625)-tw, (height*0.69)+110);

          //red planet
          /* pushMatrix();
           translate((width*0.2), (height*0.25));
           fill(255,0,0);
           sphere(25);
           popMatrix();*/

          for (i = 0; i < LINES; i++)
          {
            for (j = 0; j < (LINES*spacing); j+=spacing)
            {
              textSize(12);
              text(mars[i] + "\t", 165, 320+j);

              //println(mars[i]);
              i = i+1;
            }
          }
        }
        if (dial > 250 && dial < 361)
        {
          textSize(10);
          text( ( dial*340) + " MPS:", (width*0.625)-(tw*0.4), (height*0.69)+95);          
          text( "Current speed " + ( dial*340) + " MPS:", (width*0.625)-tw, (height*0.69)+95);
          //text( " we have entered Saturn ", (width*0.625)-tw, (height*0.69)+110);

          /* pushMatrix();
           translate((width*0.2), (height*0.25));
           fill(188,191,58);
           sphere(35);
           popMatrix();*/
          for (i = 0; i < LINES; i++)
          {
            for (j = 0; j < (LINES*spacing); j+=spacing)
            {
              textSize(12);
              text(saturn[i] + "\t", 165, 320+j); 
              //println(saturn[i]);
              i = i+1;
            }
          }
        }
      }
    } 


    noFill();
    strokeWeight(3);
    stroke(4, 116, 175);
    rect(25, 50, 215, (height/1.2)+20, 6); //"ZONE LOCATION POINTS"
    line(25, 90, 240, 90); //horizontal line at top
    line(100, 296, 100, 485); //vertical line of grid
    // String labels = "Name Distance(KM) Description Threat-Level ";
    // String[] splitz = split(labels, " ");

    text(" Name", 45, 326);
    text(" Dist", 45, 375);  
    text(" Desc", 45, 424);
    text(" Threat", 55, 469);
    //horizontal lines in the "ZONE LOCATION POINTS"
    for (int i = 0; i<4; i++)
    {
      for ( z = 36; z< (height/1.2); z+=49)
      {
        line(25, 260+z, 240, 260+z);
      }
    }

    fill(255);
    textSize(14);
    text(" ZONE LOCATION POINTS", 115, 75);

    noFill();
    stroke(4, 116, 175);
    rect((width/3+20), (height*0.77), 160, 100, 6); //middle rectange
    text("DISTANCE:", position.x-50, position.y+200);
    text("SPEED:", position.x-65, position.y+250);
    noFill();
    rect((width*0.625), (height*0.69), 270, (height*0.29), 6); //right rectangle
    line((width*0.625), (height*0.69)+30, (width*0.625)+270, (height*0.69)+30);
    textSize(15);
    fill(255);
    text(" ZONE CLEARANCE MONITOR ", (width*0.625)+130, (height*0.69)+25);

    for (int i = 0; i< (triSpace*TRIANGLE); i+=triSpace)
    {    
      fill(255);
      stroke(255);
      triangle( d, a+i, d, b+i, (d*1.034), c+i); //triangles in middle box
    }

    speed();
  }

  void speed() {

    pushMatrix();
    translate((position.x/3)*2, 0);
    upArrow = createShape();
    upArrow.beginShape();
    upArrow.fill(0);
    upArrow.vertex(position.x, position.y);
    upArrow.vertex(position.x+20, position.y+20);
    upArrow.vertex(position.x+10, position.y+20);
    upArrow.vertex(position.x+10, position.y+40);
    upArrow.vertex(position.x-10, position.y+40);
    upArrow.vertex(position.x-10, position.y+20);
    upArrow.vertex(position.x-20, position.y+20);
    upArrow.endShape(CLOSE);
    shape(upArrow);
    popMatrix();

    pushMatrix();
    translate((position.x/3)*2, position.y/3);
    downArrow = createShape();
    downArrow.beginShape();
    downArrow.fill(0);
    downArrow.vertex(position.x-10, position.y);
    downArrow.vertex(position.x+10, position.y);
    downArrow.vertex(position.x+10, position.y+20);
    downArrow.vertex(position.x+20, position.y+20);
    downArrow.vertex(position.x, position.y+40);
    downArrow.vertex(position.x-20, position.y+20);
    downArrow.vertex(position.x-10, position.y+20);
    downArrow.endShape(CLOSE);
    shape(downArrow);
    popMatrix();

if(key == CODED)
{
    if ( keyCode == UP)
    {
      pushMatrix();
      translate((position.x/3)*2, 0);
      upArrow = createShape();
      upArrow.beginShape();
      upArrow.fill(0);
      upArrow.vertex(position.x, position.y);
      upArrow.vertex(position.x+20, position.y+20);
      upArrow.vertex(position.x+10, position.y+20);
      upArrow.vertex(position.x+10, position.y+40);
      upArrow.vertex(position.x-10, position.y+40);
      upArrow.vertex(position.x-10, position.y+20);
      upArrow.vertex(position.x-20, position.y+20);
      upArrow.endShape(CLOSE);
      shape(upArrow);
      popMatrix();
    }
}
if(key == CODED){
    if (keyCode == DOWN)
    {
      pushMatrix();
      translate((position.x/3)*2, position.y/3);
      downArrow = createShape();
      downArrow.beginShape();
      downArrow.fill(255);
      downArrow.vertex(position.x-10, position.y);
      downArrow.vertex(position.x+10, position.y);
      downArrow.vertex(position.x+10, position.y+20);
      downArrow.vertex(position.x+20, position.y+20);
      downArrow.vertex(position.x, position.y+40);
      downArrow.vertex(position.x-20, position.y+20);
      downArrow.vertex(position.x-10, position.y+20);
      downArrow.endShape(CLOSE);
      shape(downArrow);
      popMatrix();
    }
}
  }
}
/*void marsData() {
 for (i = 0; i < LINES; i++)
 {
 for (j = 0; j < (LINES*spacing); j+=spacing)
 {
 
 text(mars[i] + "\t", 115, 195+j); 
 println(mars[i]);
 i = i+1;
 }
 }
 }
 }*/