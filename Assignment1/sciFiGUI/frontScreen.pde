class Screen {

  PVector position;
  String a, b;  
  float alarmH; 
  int alarmS;

  //constructor
  Screen() {   
    position = new PVector(width/2, height/2);
    a = "MOONAGE ENTERPRISES";
    b = "PRESS ENTER TO ACCESS";
    alarmH = 1.9; 
    alarmS = 30;
  }

  void display() {
    
    if (key == ENTER || key == RETURN)
    {
      shipSound.play();
    }
    
    fill(255);
    textAlign(CENTER); 
    textFont(front, 50);
    text(a, position.x, position.y);

    if ( key == RETURN || key == ENTER)
    {
      gameState = gameState + 1;
      fill(255);
    }
  }

  void alarms() {

    for (int i = 0; i < width; i+=alarmS*3.3)
    {
      if (frameCount % 25 ==0) {
        fill(0, 0, frameCount * 80 % 255); //flashing blue
        ellipse(0+i, position.y*alarmH, alarmS, alarmS);
      }
    }

    for (int i = 0; i < width; i+=alarmS*3.3)
    {
      if (frameCount % 40 ==0) {
        fill(frameCount * 80 % 255); //flashing white
        ellipse(30+i, position.y*alarmH, alarmS, alarmS);
      }
    }

    for (int i = 0; i < width; i+=alarmS*3.3)
    {
      if (frameCount % 40 ==0) {
        fill(160, 224, 229); //turquoise
        ellipse(55+i, position.y*alarmH, alarmS, alarmS);
      }
    }

    for (int i = 0; i < width; i+=alarmS*3.3)
    {
      if (frameCount % 25 ==0) {
        fill(0, 0, frameCount * 80 % 255); //flashing blue top
        ellipse(0+i, 0+alarmS, alarmS, alarmS);
      }
    }

    for (int i = 0; i < width; i+=alarmS*3.3)
    {
      if (frameCount % 40 ==0) {
        fill(frameCount * 80 % 255); //flashing white
        ellipse(30+i, 0+alarmS, alarmS, alarmS);
      }
    }

    for (int i = 0; i < width; i+=alarmS*3.3)
    {
      if (frameCount % 40 ==0) {
        fill(160, 224, 229); //flashing red-orange alarm
        ellipse(55+i, 0+alarmS, alarmS, alarmS);
      }
    }

    if (frameCount % 100 == 0) {
      fill(0, 0, frameCount * 80 % 255); 
      textSize(25);
      text(b, position.x, position.y+75);
    }

  }
}