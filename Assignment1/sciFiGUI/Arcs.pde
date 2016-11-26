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
  float arcSize; 

  int y, z;
  
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
    arcSize = 150;
    y = 140;
    z = 120;
  }

  void display() {
    //x, y, width, height, angle to start arc, angle to stop in radians
    noFill();
    strokeWeight(2);
    stroke(255);
    arc(position.x, position.y, arcSize, arcSize, a4, a1);

    stroke(102, 199, 224);
    arc(position.x, position.y, arcSize, arcSize, 0, a4); 


    int sec = second();
    strokeWeight(3);
    stroke(131, 175, 154);

    //need to move this to the small dial
    pushMatrix();
    translate(250,-100);
    for (float i=0; i<5; i++)
    {
      //arc(position.x, position.y, y, y, PI, a4); 
      //arc(position.x, position.y, z, z, a4, a1);
      arc(position.x, position.y, y, z, 0, TWO_PI); 
      //arc(position.x, position.y, z, z, random(a5,a4), random(0,a1));
      //y+=random(4,10)/6000*sec;
      //z+=random(4,8)/60*sec;
      //y+=0.02*sec;
      //z+=0.02*sec;
    }
    popMatrix();

    //outer arcs from dial
    strokeWeight(8);
    stroke(148,216,219);
    arc(position.x, position.y, arcSize*2, arcSize*2, 0, a1);     
    arc(position.x, position.y, arcSize*1.9, arcSize*1.9, a6, a3);   
    arc(position.x, position.y, arcSize*1.8, arcSize*1.8, a5, a3); 
    arc(position.x, position.y, arcSize*2.07, arcSize*2.07, (5.1*PI)/4, (5.5*PI)/4);
    arc(position.x, position.y, (arcSize*2)-30, (arcSize*2)-30, radians(270), radians(360));
    arc(position.x, position.y, (arcSize*2)-30, (arcSize*2)-30, radians(0), radians(180));
    arc(position.x, position.y, (arcSize*2)+10, (arcSize*2)+10, radians(50), radians(67.5));  
    arc(position.x, position.y, (arcSize*2)-15, (arcSize*2)-15, radians(0), radians(90));
    
    stroke(87,133,142);
    arc(position.x, position.y, arcSize*1.8, arcSize*1.8, a5, a3); 
    arc(position.x, position.y, (arcSize*2)-15, (arcSize*2)-15, radians(270), radians(360));
    arc(position.x, position.y, (arcSize*2)-15, (arcSize*2)-15, radians(90), radians(180));
    arc(position.x, position.y, (arcSize*2)-30, (arcSize*2)-30, radians(0), radians(90));
  }
}//end of class