class Arcs {

  PVector position;  

  //Circles degrees v radians
  float a1; // full circle - 360 degrees
  float a2; //315 degrees
  float a3; //270 degrees
  float a4; //225 degrees
  float a5; // half circle - 180 degrees
  float a6; //135 degrees
  float a7; // quarter circle - 90 degrees
  float a8; // eighth of circle - 45 degrees

  Arcs() {

    position = new PVector(width/2, (height/2)-50); //start in centre

    a1 = 2*PI; //360
    a2 = (7*PI)/4; //315
    a3 = (3*PI)/2; //270
    a4 = (5*PI)/4; //225
    a5 = PI; //180
    a6 = (3*PI)/4; //135
    a7 = PI/2; //90
    a8 = PI/4; //45
  }

  void display() {
    //x, y, width, height, angle to start arc, angle to stop in radians
    noFill();
    strokeWeight(2);
    stroke(255);
    arc(position.x, position.y, 150, 150, a4, a1);

    stroke(102, 199, 224);
    arc(position.x, position.y, 150, 150, 0, a4); 

    int y = 180;
    int z = 160;
    strokeWeight(0.5);
    stroke(131, 175, 154);

    for (float i=0; i<5; i++)
    {

      arc(position.x, position.y, y, y, random(0,PI), random(0,a4)); 
      arc(position.x, position.y, z, z, random(a5,a4), random(0,a1));
      y+=random(4,10);
      z+=random(4,8);

    }

    //outer arcs from dial
   // pushMatrix();
    //translate(0, 0);
    //rotate(a3);
    strokeWeight(8);
    stroke(148,216,219);
    arc(position.x, position.y, 300, 300, a7, a2);     
    arc(position.x, position.y, 285, 285, a6, a3);   
    arc(position.x, position.y, 270, 270, a5, a3); 
    arc(position.x, position.y, 310, 310, (5.1*PI)/4, (5.5*PI)/4);
    //popMatrix();
    
    //line for the numeric dial
    strokeWeight(3);
    arc(position.x, position.y, 420, 400, (3.4*PI)/4, (5.2*PI)/4);


    /*int a =276, b = 230;
    float j = radians(2);
    
    arc(position.x, position.y, 250, 250, a5, a1); 
    smooth();
    pushMatrix();
    translate(275, height/2);
    rotate(a7);
    rect(0, 0, 15, 25);
    popMatrix();
    
    pushMatrix();
    translate(276, (height/2)-20);
    rotate(a7-radians(2));
    rect(0, 0, 15, 25);
    popMatrix();
    
    for(int i = 0; i<3; i++)
    {
    pushMatrix();
    translate(275, height/2);
    rotate(radians(180));
    rect(0, 0, 15, 25);
    popMatrix();
    }*/
    
    
    
    
  }
}//end of class