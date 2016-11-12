class Grid {

  float x, y, gridW;
  int yPos1, yPos2, xPos1, xPos2, xPos3; //used to draw the grid

  //constructor
  Grid() {

    x = width*0.7;
    y = height/2;
    gridW = width*0.4; //used for rect width
    xPos1 = 400;
    xPos2 = 720;
    xPos3 = 400;
    yPos1 = 150;
    yPos2 = 450;
  }

  //display grid
  void display()
  {
    stroke(55, 105, 188);
    strokeWeight(1);
    //fill(random(-255, 255)); //add in functionality that this flashes if there's an alert
    fill(0);
    rectMode(CENTER);
    rect(x, y, gridW, height/2, 7);

    
    for ( int i = xPos1; i<xPos2+1; i+=20)
    {
      line(i, yPos1, i, yPos2); //vertical
      line(i, yPos2, xPos3+35, height);
      xPos3 += 40;
    }
    for (int j = yPos1; j < yPos2; j+=20)
    {
      line(xPos1, j, xPos2, j); //horizontal
    }
  }
}