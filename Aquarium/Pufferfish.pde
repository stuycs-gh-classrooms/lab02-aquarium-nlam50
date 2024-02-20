class PufferFish extends Animal {
    boolean puff;
    int scared;
    PImage img0;
    PImage img2;

    PufferFish(int x, int y) {
        super(x, y);
        xspeed = (int) random(-5, 6);
        yspeed = (int) random(-5, 6);
        while (xspeed == 0) {
            xspeed = (int) random(-5, 6);
        }
        while (yspeed == 0) {
            yspeed = (int) random(-5, 6);
        }
        puff = false;
        scared = 0;
    }

    void display() {
        if (puff) {
            img0 = loadImage("bigPuff.png");
            image(img0, ax - 50, ay - 50, 100, 100);
            scared++;
        } else {
            img2 = loadImage("smallPuff.png");
            image(img2, ax - 50, ay - 50, 100, 100);
        }
    }

    void form(boolean p) {
        puff = p;
        if (scared > 100) {
            t.numAnimals--;
            t.a.remove(this);
        }
    }
}
