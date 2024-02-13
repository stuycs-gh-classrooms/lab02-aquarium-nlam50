class Oyster extends Animal {
  Oyster(int x, int y, int w, int h) {
    super(x, y, w, h);
    xspeed = 1;
    yspeed = 1;
  }

  void display() {
    fill(255, 255, 0);
    circle(ax, ay, 40);
  }
}
