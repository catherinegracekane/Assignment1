class Fuel {

  int a, b, c;


  //constructor
  Fuel() {
    a = 405;
    b=393;
    c=401;
  }

  void display() {

    fill(0);
    stroke(4, 116, 175);
    rect((width/15)+15, ((height/3)*2), 160, height/3-10, 6); //left rectangle
    rect((width/2)+100, ((height/3)*2)+10, 270, height/3-20, 6); //right   

    rect((width/3+20), (height*0.77), 160, 100, 6); //middle
    for (int i = 0; i< (18*5); i+=18)
    {    
      fill(255);
      stroke(255);
      triangle( 296, a+i, 296, b+i, 306, c+i); //triangles in middle box
    }
  }
}