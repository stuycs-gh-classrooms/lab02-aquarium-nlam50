class Turtle extends Animal {
    PImage sprite1;
    PImage sprite2;
    boolean flipH;
    boolean hungry;
    int hunger;
    int time;

    Turtle(int gx, int gy) {
        super(gx, gy);
        time = 0;
        flipH = xspeed > 0;
        hungry = false;
        hunger = 5;
        sprite1 = loadImage("turtle0.png");
        sprite2 = loadImage("turtle1.png");
    }

    void move(Tank t) {
        ax += xspeed;
        if (ax + aw + aw/2 >= width || ax <= 0) {
            xspeed *= -1;
            flipH = !flipH;
        }
    }

    void display() {
        if (!flipH) {
            image(sprite2, ax, ay, 75, 75);
        } else {
            image(sprite1, ax, ay, 75, 75);
        }
        if (hungry) {
            fill(255, 0, 0);
        } else {
            fill(0, 255, 0);
        }
        circle(ax, ay, 15);
    }
    
    void moreHunger(int x, int y) {
        if (dist(x, y, ax, ay) < aw / 2) {
            hunger++;
            if (hunger > 5) {
                hunger = 5;
            }
        }
    }
}
