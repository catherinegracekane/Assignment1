static final int TRIANGLE = 5;
class Fuel {

  PVector position;
  int a, b, c, d;
  int spacing;
  float dial;
  int sec;
  int i = 0;
  int j;
  String[] mars;
  String[] split;
  //constructor
  Fuel() {

    position = new PVector(width/2, (height/2)-50); //start in centre
    mars = loadStrings("mars.txt");
    split = split(mars[i], " ");

    a = 405;
    b = 393;
    c = 401;
    d = 296; //triangle x 
    spacing = 18;
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
      }
      int tw = 125;
      if (dial > 0 && dial < 151)
      {
        textSize(9);
        text( "Zone location " + dial, (width*0.625)-tw, (height*0.69)+95);
        text( " is equal to Jupiter ", (width*0.625)-tw, (height*0.69)+110);
        marsData();
      }
      if (dial > 150 && dial < 251)
      {
        textSize(9);
        text( "Zone location : " + dial, (width*0.625)-tw, (height*0.69)+95);
        text( " is equal to Mars ", (width*0.625)-tw, (height*0.69)+110);
        marsData();
      }
      if (dial > 250 && dial < 361)
      {
        textSize(9);
        text( "Zone location " + dial, (width*0.625)-tw, (height*0.69)+95);
        text( " is equal to Saturn ", (width*0.625)-tw, (height*0.69)+110);
        marsData();
      }
    } 


    noFill();
    strokeWeight(3);
    stroke(4, 116, 175);
    rect(25, 50, 185, (height/1.2)+20, 6); //left rectangle
    line(25, 90, 210, 90);
    fill(255);
    textSize(14);
    text(" ZONE LOCATION POINTS", 115, 75);

    noFill();
    stroke(4, 116, 175);
    rect((width/3+20), (height*0.77), 160, 100, 6); //middle rectange

    noFill();
    rect((width*0.625), (height*0.69), 270, (height*0.29), 6); //right rectangle
    line((width*0.625), (height*0.69)+30, (width*0.625)+270, (height*0.69)+30);
    textSize(15);
    fill(255);
    text(" ZONE CLEARANCE MONITOR ", (width*0.625)+130, (height*0.69)+25);

    for (int i = 0; i< (spacing*TRIANGLE); i+=spacing)
    {    
      fill(255);
      stroke(255);
      triangle( d, a+i, d, b+i, (d*1.034), c+i); //triangles in middle box
    }
  }

  void marsData() {
    for (i = 0; i < 4; i++)
    {
      text(mars[i] + "\t", 115, 75+i);
    }
  }
}