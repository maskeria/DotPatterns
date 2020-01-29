int n = 2000;
float rads = (radians(4));
int theta = 0;
Dot[] dots = new Dot[n];
Dot[] funkyDots = new Dot[n];
int change = 0;
void setup() {
  size(1000, 1000);
  frameRate(100);
  for(int i = 0; i < n; i++) {
    float x = random(-height/2, width/2);
    float y = random(-height/2, width/2);
    dots[i] = new Dot(x, y, "red");
    funkyDots[i] = new Dot(x, y, "blue");
  }
}

void draw() {
  background(255);
  translate(height/2, width/2);
  for(int i = 0; i < n; i++) {
    dots[i].show();
    
    pushMatrix();
    
    scale(1.05); // makes spirals
    rotate(radians(4)); // produces concentric circles
    translate(10*sin(0), 10*cos(0)); // moves the origin of the circles
    funkyDots[i].show();
    
    popMatrix();
  }
  
  if(theta < 360) {
    theta++;
  } else {
    theta = 0;
  }
  //delay(100);
}
