//This section will give alien infomation
class Alien {

  int a, b, c, d;

  //constructor
  Alien() {

    a = 77;
    b = width/5;
    c = height/2;
    d = width/3;
  }

  void display() {

    stroke(31, 85, 23);
    fill(0);
    rectMode(CENTER);
    rect(b, c+65, d, (c*2)-175, 7); //outer rect
    line((b)-(d/2), c-97, (b)+(d/2), c-97);

    strokeWeight(3);
    stroke(193, 190, 189);
  }

  void alarms() {
    fill(39, 247, 25);
    ellipse(a, 95, 30, 30);  //3 alarm buttons
    fill(183, 129, 42);
    ellipse(a+80, 95, 30, 30);  //3 alarm buttons
    fill(170, 50, 39);
    ellipse(a+160, 95, 30, 30);  //3 alarm buttons
  }
}