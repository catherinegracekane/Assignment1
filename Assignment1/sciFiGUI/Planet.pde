
class Planet {

  PVector position;
  float c1, c2, c3;

  //constructor
  Planet(float colour1, float colour2, float colour3) 
  {

    position = new PVector(width*0.15, height*0.6);
    c1 = colour1;
    c2 = colour2;
    c3 = colour3;
  }

  void render() {

    if (mousePressed)
    {
      if (mouseX > position.x-25 && mouseX < position.x + 20 && mouseY > position.y -25 && mouseY < position.y+20)
      {
        pushMatrix();
        translate(position.x, position.y);
        fill(c1, c2, c3);
        sphere(35);
        popMatrix();
      }
    }
  }
}