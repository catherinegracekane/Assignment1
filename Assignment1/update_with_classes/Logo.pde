class Logo {

  PShape logo;
  float x;

  Logo() {
    x=width/2;
  }
  void display() {
    strokeWeight(3);
    logo = createShape();
    logo.beginShape();
    stroke(31, 85, 23);
    logo.fill(0);
    logo.vertex(x-30, 20);
    logo.vertex(x+30, 20);
    logo.vertex(x+80, 100);
    logo.vertex(x+50, 100);
    logo.vertex(x+30, 80);
    logo.vertex(x-30, 80);
    logo.vertex(x-50, 100);
    logo.vertex(x-80, 100);  
    logo.endShape(CLOSE);
    shape(logo);
  }
}