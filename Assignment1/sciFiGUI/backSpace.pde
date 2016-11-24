//I want to use this to create a background that resembles outer space
static final int STARS = 12;

class Space {
    float a, b, c;

  Space() {

  }

  void display()
  {
    for (int i = 0; i < STARS; i++) {
      point(x(b), y(b));
      point(xs(c), ys(c));
    }
    b-=0.2;
  }

  float x(float b) {
    return sin(-b)*1000;
  }

  float xs (float c) {
    return sin(-b)*1000;
  }

  float y(float b) {
    //return cos(-t/10)*100 + sin(t/5) *50; 
    return b;
  }

  float ys (float c) {
    return -b;
  }
}