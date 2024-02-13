  class Animal {
    int ax;
    int ay;
    int aw;
    int ah;
    int xspeed;
    int yspeed;
    
    Animal(int x, int y, int w, int h) {
      xspeed = int(pow(-1, int(random(2))));
      yspeed = int(pow(-1, int(random(2))));
      ax = x;
      ay = y;
      aw = w;
      ah = h;
    }
    
    Animal() {
      ax = int(random(width - aw));
      ay = int(random(height - ah));
      aw = 40;
      ah = 20;
      //xspeed = int(pow(-1, int(random(2))));
      //yspeed = int(pow(-1, int(random(2))));
    }
    
    void move() {
      //if (ax >= width - aw || ax <= 0) {
      //  xspeed *= -1;
      //}
      //if (ay >= height - ah || ay <= 0) {
      //  yspeed *= -1;
      //}
      if (ax >= tankX + tankW - aw || ax <= tankX) {
        xspeed *= -1;
      }
      if (ay >= height - floorH - ah || ay <= floorH - tankY) {
            yspeed *= -1;
      }
      //if (ay >= tankY + tankH - ah || ay <= floorH - tankY) {
      //  yspeed *= -1;
      //}
        ax += xspeed;
        ay += yspeed;
    }
      
    void display() {
      // Draw the animal
      fill(255, 0, 0); 
      rect(ax, ay, 40, 20); 
    }
  }
