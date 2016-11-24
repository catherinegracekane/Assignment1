class Screen{
  
  PVector position;
  String a = "MOONAGE ENTERPRISES";
  String b = "PRESS ANY KEY TO ENTER";
  
  //constructor
  Screen(){   
    position = new PVector(width/2, height/2);
  }
  
  void display(){
    
    fill(255);
    textAlign(CENTER); 
    textFont(front, 50);
    text(a, position.x, position.y);
    textSize(25);
    text(b, position.x, position.y+75);
    
    if(keyPressed)
    {
      gameState = gameState + 1;
    }
  }
}