class Screen {

  PVector position;
  String a, b;  

  //constructor
  Screen() {   
    position = new PVector(width/2, height/2);
    a = "MOONAGE ENTERPRISES";
    b = "PRESS ENTER TO ACCESS";
  }

  void display() {

    if (key == ENTER || key == RETURN)
    {
      shipSound.rewind();
      shipSound.play();
    }

    fill(203, 108,29);
    textAlign(CENTER); 
    textFont(front, 50);
    text(a, position.x, position.y);
    textSize(25);
    text(b, position.x, position.y+75);
    

    if ( key == RETURN || key == ENTER)
    {
      gameState = gameState + 1;
    }
  }
  
    void alarms() {

    if (frameCount % 25 ==0) {
      fill(0, frameCount * 80 % 255, 0); //flashing green alarm
      ellipse(position.x-80, position.y-60, 30, 30);
    }

    if (frameCount % 40 ==0) {
      fill(255, frameCount * 80 % 255, 0); //flashing red-orange alarm
      ellipse(position.x, position.y-60, 30, 30);
    }

    if (frameCount % 30 == 0) {
      fill(frameCount * 80 % 255, 0, 0); //flashing red alarm
      ellipse(position.x+80, position.y-60, 30, 30);
    }
  }
}