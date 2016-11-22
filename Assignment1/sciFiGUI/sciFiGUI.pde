Dial dial;
Arcs arcs;
Fuel fuel;
void setup(){
  
  size(800, 500, P3D);
  background(0);
  
  dial = new Dial();
  arcs = new Arcs();
  fuel = new Fuel();
  
}

void draw(){
  
  
    background(0);
    dial.middleC();
    dial.smallDial();
    fuel.display();
    arcs.display();

}