class Bettafish extends Animal {
    PImage img3;

    Bettafish(int x, int y) {
        super(x, y);
        xspeed = 2;
        yspeed = 2;
        img3 = loadImage("bettafish.png");
    }

    void move(Tank t) {
        super.move(t);
        for (int i = 0; i < t.a.size(); i++) {
            Animal otherAnimal = t.a.get(i);
            if (otherAnimal != this && otherAnimal instanceof Bettafish) {
                if (collideWith(otherAnimal)) {
                    int sof = (int) random(2);
                    if (sof == 0) {
                        t.a.remove(i);
                    } else {
                        t.a.remove(this);
                    }
                    t.numAnimals--;
                }
            }
        }
    }

    void display() {
        fill(0, 0, 255);
        circle(ax, ay, aw / 3);
        image(img3, ax - 50, ay - 50, 100, 100);
    }

    boolean collideWith(Animal other) {
        return (ax + aw >= other.ax &&
                ax <= other.ax + other.aw &&
                ay + ah >= other.ay &&
                ay <= other.ay + other.ah);
    }
}
