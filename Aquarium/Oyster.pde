class Oyster extends Animal {
    PImage img1;
    boolean hungry;
    int hunger;
    int time;

    Oyster(int x, Tank t) {
        super(x, (int) random(t.ty + t.th - t.tfloor, height));
        ay = (int) random(t.ty + t.th - t.tfloor, height);
        xspeed = (int) random(-2, 3);
        while (xspeed == 0) {
            xspeed = (int) random(-2, 3);
        }
        aw /= 2;
        yspeed = 0;
        hungry = false;
        time = 0;
        hunger = 5;
        img1 = loadImage("oyster.png");
    }

    void move(Tank t) {
        ax += xspeed;
        if (ax + aw + aw/2 >= width || ax - aw - aw/2 <= 0) {
            xspeed *= -1;
        }
        time++;
    }

    void display() {
        image(img1, ax - 50, ay - 50, 100, 100);
        if (hungry) {
            fill(255, 0, 0);
            circle(ax, ay - 40, 15);
        } else {
            fill(0, 255, 0);
            circle(ax, ay - 40, 15);
        }
    }

    void hungry() {
        if (time % hungerLevel == 0) {
            hunger--;
        }
        hungry = hunger < 3;
        if (hunger < 0) {
            t.numAnimals--;
            t.a.remove(this);
        }
    }

    void moreHunger(int x, int y) {
        if (dist(x, y, ax, ay) < 50) {
            hunger++;
        }
    }
}
