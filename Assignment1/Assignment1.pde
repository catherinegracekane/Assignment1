int gameState = 0;

void setup()
{
  size(800, 500, P2D);

}
//frameSpeed is used to change the speed in the screen 
float frameSpeed = 0;
//frameChange will determine when the screen needs to change
float frameChange = 0;

int end = 0;

void draw()
{
 
  //I need to exit mainScreen and enter next screen: fix this next 09/11/16
  mainScreen();
  
  if(mousePressed)
  {
  int timeValue = millis();
  //need to calculate frameSpeed here
  frameSpeed = (timeValue - end) / 500.0f; 
  end = timeValue;
  
  //now the frameChange is calculated by incrementing by frameSpeed, 
  //change is used to determine what's on screen according to these values
  frameChange += frameSpeed;
  
  //this is simply a checking mechanism **can remove**
  println("This is frameSpeed " + frameSpeed);
  println("This is frameChange" + frameChange);
  println("gamestate is" + gameState);

  while(gameState > 1)
  {
  if (frameChange >= 1 && frameChange < 7)
  {
    //this is code to test and will be removed
    background(0);
    textSize(50);
    text("TEST", width/2, height/2);
  }
  if (frameChange >= 7 && frameChange < 8)
  {
    electricEye();
  }
  if (frameChange >= 10)
  {
    frameChange = 0;
  } 
  }
  }
  

}

void electricEye() {

  background(51, 31, 237);
  fill(255);
  ellipse(width/2, height/2, width-200, width/4);
  fill(83, 102, 157);
  ellipse(width/2, height/2, 200, width/4-30);
}