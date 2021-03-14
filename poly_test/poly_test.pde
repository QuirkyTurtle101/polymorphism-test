ArrayList<Animal> objList = new ArrayList<Animal>();

void setup(){
  size(600, 600);
}

void draw(){
  clear();
  textSize(20);
  text("press Q, W or E for stuff", 50, 50);
  for(Animal a : objList){
    a.display();
    a.move();
  }
}

void keyPressed(){
  Animal temp;
  switch(key){
    case 'q':
      temp = new Dog(random(0, 10));
      break;
    case 'w':
      temp = new Cat(random(0, 15), color(random(0, 255), random(0, 255), random(0, 255)));
      break;
    case 'e':
      temp = new Bird(random(0, 20));
      break;
    default:
      temp = new Animal();
      break;
  }
  objList.add(temp);
}
