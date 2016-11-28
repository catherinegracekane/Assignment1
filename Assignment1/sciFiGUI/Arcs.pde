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
  float angle, angle1;

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
  }

  void display() {
    //x, y, width, height, angle to start arc, angle to stop in radians
    angle -=0.02; //used to rotate the dial
    noFill();
    strokeWeight(2);
    stroke(255);
    arc(position.x, position.y, arcSize, arcSize, a4+angle, a1+angle);

    stroke(102, 199, 224);
    arc(position.x, position.y, arcSize, arcSize, 0+angle, a4+angle); 

    //outer arcs from dial
    angle1 +=0.02;
    strokeWeight(8);
    stroke(148, 216, 219);
    arc(position.x, position.y, arcSize*2, arcSize*2, 0, a1);     
    arc(position.x, position.y, arcSize*1.9, arcSize*1.9, a6, a3);  
    arc(position.x, position.y, arcSize*1.8, arcSize*1.8, a5, a3); 
    arc(position.x, position.y, arcSize*2.07, arcSize*2.07, ((5.1*PI)/4)+angle1, ((5.5*PI)/4)+angle1);
    arc(position.x, position.y, (arcSize*2)-30, (arcSize*2)-30, radians(270), radians(360));
    arc(position.x, position.y, (arcSize*2)-30, (arcSize*2)-30, radians(0), radians(180));
    arc(position.x, position.y, (arcSize*2)+10, (arcSize*2)+10, radians(50)+angle1, radians(67.5)+angle1);  
    arc(position.x, position.y, (arcSize*2)-15, (arcSize*2)-15, radians(0), radians(90));

    stroke(87, 133, 142);
    arc(position.x, position.y, arcSize*1.8, arcSize*1.8, a5, a3); 
    arc(position.x, position.y, (arcSize*2)-15, (arcSize*2)-15, radians(270), radians(360));
    arc(position.x, position.y, (arcSize*2)-15, (arcSize*2)-15, radians(90), radians(180));
    arc(position.x, position.y, (arcSize*2)-30, (arcSize*2)-30, radians(0), radians(90));
  }
}//end of class