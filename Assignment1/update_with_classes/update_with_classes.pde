//object data types
Eye eye; 
Grid grid; 
Alien data;
Logo cp; //cp = control panel

void setup() {
  
  size(800, 600);
  background(0);
  
//class calls
  eye = new Eye(); //this is a new instance of eye
  grid = new Grid(); //this is a new instance of grid
  data = new Alien(); //this is a new instance of alien
  cp = new Logo(); //this is a new instance of logo
  
  data.alienData(); //Alien : information
  
}

void draw() {
  cp.display(); //Logo
  data.display(); //Alien
  data.alarms(); //Alien : adding more functionality at later date
  grid.display(); //Grid
  eye.display(); //Eye  
}