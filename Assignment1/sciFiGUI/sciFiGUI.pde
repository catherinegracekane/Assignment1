Dial dial;
Arcs arcs;

void setup(){
  
  size(800, 500);
  background(0);
  
  dial = new Dial();
  arcs = new Arcs();
  
}

void draw(){
  
    //background(0);
    arcs.display();
    dial.middleC();


}