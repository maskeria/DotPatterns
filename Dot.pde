class Dot{
  float x;
  float y;
  float relX;
  float relY;
  int size = 6;
  String colour;
  
  
  public Dot(float x, float y, String colour) {
    this.x = x;
    this.y = y;
    this.colour = colour;
    relX = x-10;
    relY = y-10;
  }
  
  void show() {
    if(colour == "red"){
       fill(255, 0, 0);
    } else if(colour == "blue") {
      fill(0, 0, 255);
    } else {
      fill(0,0,0);
    }
    circle(x, y, size);
  }
}
