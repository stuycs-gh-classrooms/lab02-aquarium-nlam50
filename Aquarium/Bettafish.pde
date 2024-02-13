class Bettafish extends Animal {
  ArrayList<Animal> animals;

  Bettafish(int x, int y, int w, int h, ArrayList<Animal> animals) {
    super(x, y, w, h);
    xspeed = 2;
    yspeed = 2;
    this.animals = animals;
  }

  void move() {
    super.move();

    for (int i = 0; i < animals.size(); i++) {
        Animal otherAnimal = animals.get(i);
        if (otherAnimal != this && otherAnimal.getClass() == Bettafish.class) {
            if (ax + aw >= otherAnimal.ax &&
                    ax <= otherAnimal.ax + otherAnimal.aw &&
                    ay + ah >= otherAnimal.ay &&
                    ay <= otherAnimal.ay + otherAnimal.ah) {
                int sof = (int) random(2);
                if (sof == 0) {
                    animals.remove(i);
                } else {
                    animals.remove(this);
                }
            }
        }
    }
  }

  void display() {
    fill(0, 0, 255);
    rect(ax, ay, 40, 20);
  }
}
