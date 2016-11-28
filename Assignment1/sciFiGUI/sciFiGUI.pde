import ddf.minim.*; //sound library

Dial dial;
Arcs arcs;
Fuel fuel;
Space space;
Screen main; //front screen

PFont font, front;
PImage img;
int gameState = 0; //used to control what's on screen

//used sound: http://www.audiomicro.com/free-sound-effects/mother-ship
AudioPlayer shipSound;
Minim minim;

void setup() {

  size(800, 500, P3D);
  background(0);

  //font
  front = loadFont("PTMono-Regular-48.vlw");
  font = loadFont("Menlo-Regular-48.vlw");
  textFont(font, 10);
  
  //sound
  minim = new Minim(this);
  shipSound = minim.loadFile("Mother ship 1.wav");


  dial = new Dial(); 
  arcs = new Arcs();
  fuel = new Fuel();
  space = new Space();
  main = new Screen();
}

void draw() {


  switch (gameState)
  {
  case 0:
    //front screen
    main.display();
    break;

  case 1:
    backGround();
    space.display();
    dial.middleC();
    dial.smallDial();
    fuel.display();
    arcs.display();
    break;

  default:
    println("Incorrect choice");
    break;
  }
}

void backGround() {
  //image link: https://i.ytimg.com/vi/Kg4CRIDXkGg/maxresdefault.jpg
  img = loadImage("spacebackground.jpg");
  background (img);
}