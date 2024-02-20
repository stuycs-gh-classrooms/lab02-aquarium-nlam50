Tank t;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;
int hungerLevel = 300;

void setup() {
  size(600, 600);
  tankW = width;
  tankH = height - 50;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.display();
}//setup


void draw() {
  background(150);
    t.display();
    t.moveAnimals();
    puffUP(t);
    isHungry();
}

void isHungry () {
  for (int i = 0; i < t.numAnimals; i++) {
    t.a.get(i).hungry();
  }
}

void puffUP(Tank t) {
  for (int i = 0; i < t.numAnimals-1; i++) {
     t.a.get(i).create(false);
    for (int j = 0; j < t.numAnimals; j++) {
      if (t.a.get(i).collide(t.a.get(j))) {
        t.a.get(i).create(true);
      }
    }
  }
}

void mouseReleased() {
  for (int i = 0; i < t.numAnimals; i++) {
    t.a.get(i).moreHunger(mouseX, mouseY);
  }
}

void keyPressed() {
  if (key == '1') {
    t.addAnimal(mouseX, mouseY, 1);
  }
  else if (key == '2'){
    t.addAnimal(mouseX, mouseY, 2);
  }
  else if (key == '3'){
    t.addAnimal(mouseX, mouseY, 3);
  }
  else if (key == '4'){
    t.addAnimal(mouseX, mouseY, 4);
  }
}
