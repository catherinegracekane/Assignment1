Dial dial;
Arcs arcs;
Fuel fuel;
Space space;
PFont font;

void setup(){
  
  size(800, 500, P3D);
  background(0);
  
  font = loadFont("Menlo-Regular-48.vlw");
  textFont(font, 10);
  
  dial = new Dial();
  arcs = new Arcs();
  fuel = new Fuel();
  space = new Space();
}

void draw(){
  
  
    background(0);
    space.display();
    dial.middleC();
    dial.smallDial();
    fuel.display();
    arcs.display();

}