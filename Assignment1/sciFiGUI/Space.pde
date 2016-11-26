//I want to use this to create a background that resembles outer space
static final int STARS = 12;

class Space {
    float a, b, c;

  Space() {


  }

  void display()
  {
    for (int i = 0; i < STARS; i++) {
      //stroke(200, 203, 156);
      point(x(b), y(b));
      point(x(-b), y(-b));
    }
    b-=random(0.2, 0.5);
  }

  float x(float b) {
    return sin(-b)*1000 + cos(-b)*200;
  }

  float y(float b) {
    return cos(-b/10)*100 + sin(b/5) *50 + cos(b)*100; 
    //return b;
  }

}