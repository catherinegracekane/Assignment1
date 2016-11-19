Dial dial;
Arcs arcs;
Fuel fuel;
void setup(){
  
  size(800, 500);
  background(0);
  
  dial = new Dial();
  arcs = new Arcs();
  fuel = new Fuel();
  
}

void draw(){
  
    //background(0);
    arcs.display();
    dial.middleC();
    dial.smallDial();
    fuel.display();

}