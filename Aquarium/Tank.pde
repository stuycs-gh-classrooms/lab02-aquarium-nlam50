class Tank {
    int tx;
    int ty;
    int tfloor;
    int tw;
    int th;
    ArrayList<Animal> a; 
    int numAnimals;
  
    Tank(int x, int y, int w, int h, int tf) {
        tx = x;
        ty = y;
        tw = w;
        th = h;
        tfloor = tf;
        a = new ArrayList<Animal>();
        numAnimals = 0;
    }
  
    void display() {
        fill(0, 200, 250);
        rect(tx, ty, tw, th);
        fill(200, 150, 80);
        rect(tx, ty + th - tfloor, tw, tfloor);
        fill(150, 150, 150);
        rect(tx, ty, tw, tfloor/2);

        for (int i = 0; i < numAnimals; i++) {
            a.get(i).display();
        }
    }
  
    void addAnimal(int x, int y, int animal) {
        if (animal == 1) {
            Bettafish i = new Bettafish(x, y);
            a.add(i);
        }
        else if (animal == 2) {
            Oyster i = new Oyster(x, this);
            a.add(i);
        }
        else if (animal == 3) {
            PufferFish i = new PufferFish(x, y);
            a.add(i);
        }
        else if (animal == 4) {
            Turtle i = new Turtle(x, y);
            a.add(i);
        }
        numAnimals++;
    }
  
    void moveAnimals() {
        for (int i = 0; i < numAnimals; i++) {
            a.get(i).move(this);
        }
    }
}
