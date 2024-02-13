class Tank {
  int tx;
  int ty;
  int twidth;
  int theight;
  int tfloor;
  ArrayList<Animal> animals;
  
  Tank(int x, int y, int w, int h, int floorH) {
    tx = x;
    ty = y;
    twidth = w;
    theight = h;
    tfloor = floorH;
    animals = new ArrayList<Animal>();
  }
  
  void addAnimal(int x, int y) {
    if (x >= tx && x <= tx + twidth && y >= ty && y <= ty + theight - tfloor) {
        animals.add(new Bettafish(x, y, 40, 20, animals));
    } else if (x >= tx && x <= tx + twidth && y >= ty + theight - tfloor && y <= ty + theight) {
        animals.add(new Oyster(x, y, 40, 20));
    }
  }

  void moveAnimals() {
    for (int i = 0; i < animals.size(); i++) {
      Animal animal = animals.get(i);
      animal.move();
    }
  }

  void display() {
    fill(0, 200, 250);
    rect(tx, ty, twidth, theight);
    fill(200, 150, 80);
    rect(tx, ty + theight - tfloor, twidth, tfloor);
    //fill(200, 150, 80);
    //rect(0, height - tfloor, twidth, tfloor);
    // Display animals
    for (int i = 0; i < animals.size(); i++) {
      Animal animal = animals.get(i);
      animal.display();
    }
  }
  
}
