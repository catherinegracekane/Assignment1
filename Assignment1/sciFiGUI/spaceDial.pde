class Dial{
  
  PVector position; //x and y co-ordinates
  PVector rect; //position of rectangles
  //constructor
  Dial(){
    
  position = new PVector(width/2, (height/2)-50); //start in centre
    
  }//end of Dial
  
  //This is my middle circle for the dial
  void middleC(){
    
    int a = 50;
    int b = 18;
    //main middle circle
    fill(119, 204, 211);
    ellipse(position.x, position.y, 110, 100);
    //small blue centre
    stroke(100);
    fill(115, 185, 203);
    ellipse(position.x, position.y, 25, 20);
    
    //details in the centre
    noStroke();
    fill(100);    
    for(int i = 0 ; i < 7 ; i++)
    {
      rect(position.x-a, position.y-3, 3, 7);
      a -= 5;
      rect(position.x+b, position.y-3, 3, 7);
      b += 5;    
    }//end of for    
  }
  
  void smallDial(){
        //smaller circle
    pushMatrix();
    translate(250,-100);
    fill(119, 204, 211);
    ellipse(position.x, position.y, 110, 100);
    fill(87,133,142);
    arc(position.x, position.y, 109, 110, (3*PI)/4, (5*PI)/4);
    //white tear drops on small dial
    fill(255);
    arc(position.x-30, position.y, 50, 10, (3*PI)/4, (5*PI)/4); //tear drop left
    translate(600, -195);
    rotate((TWO_PI)/4);
    arc(position.x-30, position.y, 50, 10, (3*PI)/4, (5*PI)/4); //tear drop top
    popMatrix();
    
    pushMatrix();
    translate(310, -100);
    arc(position.x-30, position.y, 50, 10, (7*PI)/4, (9*PI)/4); //tear drop right
    translate(545, -128);
    rotate((TWO_PI)/4);
    arc(position.x-30, position.y, 50, 10, (1.5*PI)/4, (3.2*PI)/4); //tear drop right   
    popMatrix();
  }
  
}//end of dial class
  