class Animal {
    int ax;
    int ay;
    int aw;
    int ah;
    int xspeed;
    int yspeed;
    
    Animal() {
        ax = width / 2; 
        ay = height / 2;
        aw = 50;
        ah = 50;
        xspeed = 1;
        yspeed = 1;
    }
   
    Animal(int x, int y) {
        ax = x; 
        ay = y;
        aw = 50;
        ah = 50;
        xspeed = 1;
        yspeed = 1;
        
        // Adjust position if it's outside the tank boundaries
        if (ax >= 0) {
            ax = 50;
        } else if (ax > width) {
            ax = width - 50;
        }
        if (ay < t.ty) {
            ay = t.ty + 100;
        } else if (ay > t.ty + t.th - t.tfloor) {
            ay = t.ty + t.th - t.tfloor - 50;
        }
    }

    void move(Tank t) {
        if (ax >= t.tx + t.tw - aw/2 || ax <= t.tx + aw/2) {
            xspeed *= -1;
        }
        if (ay >= t.ty + t.th - ah/2 - t.tfloor || ay <= t.ty + ah/2 + t.tfloor/ 2) {
            yspeed *= -1;
        }
        ax += xspeed;
        ay += yspeed;
    }
  
    void display() {
        circle(ax, ay, aw);
    }
 
    void create(boolean p) {
    }
  
    boolean collide (Animal other) {
        if (other != this) {
            return (dist(ax, ay, other.ax, other.ay) <= (aw/2 + other.aw/2));
        } else {
            return false;
        }
    }
  
    void hungry () {
    }
  
    void moreHunger(int x, int y) {
    }
 
    void die() {
    }
}
