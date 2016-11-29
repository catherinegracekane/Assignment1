//This section will give alien infomation
Table table;

class Alien {

  int a, b, c, d, e;
  //Table values
  String name, origin; 
  int age, threat;
  //constructor
  Alien() {

    a = 77;
    b = width/5;
    c = height/2;
    d = width/3;
  }

  void display() {

    stroke(55, 105, 188);
    fill(0);
    rectMode(CENTER);
    rect(b, c+65, d, (c*2)-175, 7); //outer rect
    line((b)-(d/2), c-97, (b)+(d/2), c-97);

    strokeWeight(3);
    stroke(193, 190, 189);
  }

  void alarms() {

    if (frameCount % 25 ==0) {
      fill(0, frameCount * 80 % 255, 0); //flashing green alarm
      ellipse(a, 95, 30, 30);
    }

    if (frameCount % 40 ==0) {
      fill(255, frameCount * 80 % 255, 0); //flashing red-orange alarm
      ellipse(a+80, 95, 30, 30);
    }

    if (frameCount % 30 == 0) {
      fill(frameCount * 80 % 255, 0, 0); //flashing red alarm
      ellipse(a+160, 95, 30, 30);
    }
  }

  void alienData() {

    table = loadTable("aliens.csv", "header");

    println(table.getRowCount() + " total rows in table"); 

    for (TableRow row : table.rows()) {
      name = row.getString("Name");
      age = row.getInt("Age");
      origin = row.getString("Planet of Origin");
      threat = row.getInt("Threat Level");
      println(name + " (" + origin + ") has an threat level of " + threat);
    }
  }
  String toString()
  {
    return name
      + "," + age
      + "," + origin
      + "," + threat
      ;
  }

  void button() {

    //fill(0,0,255);
    //Make 5 buttons
    rectMode(CENTER);
    for ( int i = 0; i<5; i++)
    {
      for (e=width/2-120; e<height-50; e+=60)
      {
        rect(b, e, b, b/3, 7);
        text(name, b, e);
      }
    }
  }
}