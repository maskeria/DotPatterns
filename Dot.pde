class Dot{
  float x;
  float y;
  float relX;
  float relY;
  int size = 6;
  
  
  public Dot(float x, float y) {
    this.x = x;
    this.y = y;
    relX = x-10;
    relY = y-10;
  }
  
  void show() {
    alpha(5);
    fill(random(255),random(255),random(255));
    circle(x, y, size);
  }
}
