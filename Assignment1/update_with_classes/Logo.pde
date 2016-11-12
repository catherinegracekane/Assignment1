class Logo {

  PShape logo;
  float x;

  Logo() {
    x=width/2;
  }
  
  void display() {
    strokeWeight(3);
    stroke(55, 105, 188);
    logo = createShape();
    logo.beginShape();
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