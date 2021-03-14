class Animal{
  //variables
  float speed;
  float xpos = random(100, 500);
  float ypos = random(100, 500);
  
  //constructor
  
  //functions
  void move(){
    println("debug move animal");
  }
  
  void display(){
    println("debug display animal");
  }
}

class Dog extends Animal{
  //variables
  
  //constructor
  Dog(float tempspeed){
    speed = tempspeed;
  }
  
  //functions
  void move(){
    xpos -= speed;
  }
  
  void display(){
    fill(255, 0, 255);
    circle(xpos, ypos, 20);
  }
}

class Cat extends Animal{
  //variables
  color colour = color(255, 255, 0);
  
  //constructor
  Cat(float tempspeed){
    speed = tempspeed;
  }
  Cat(float tempspeed, color tempcolor){
    speed = tempspeed;
    colour = tempcolor;
  }
  
  //functions
  void move(){
    xpos += speed;
  }
  
  void display(){
    fill(colour);
    circle(xpos, ypos, 15);
  }
}

class Bird extends Animal{
  //variables
  
  //constructor
  Bird(float tempspeed){
    speed = tempspeed;
  }
  
  //functions
  void move(){
    ypos -= speed;
  }
  
  void display(){
    fill(255, 255, 0);
    rect(xpos, ypos, 10, 20);
  }
}
