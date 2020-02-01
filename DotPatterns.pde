int n = 4000;
float rads = (radians(4));
int theta = 0;
float phi = 0;
Dot[] dots = new Dot[n];
Dot[] funkyDots = new Dot[n];

int change = 0;
void setup() {
  background(255);
  size(1000, 1000);
  frameRate(100);
  for(int i = 0; i < n; i++) {
    float x = random(-height/2, width/2);
    float y = random(-height/2, width/2);
    dots[i] = new Dot(x, y);
    funkyDots[i] = new Dot(x, y);
  }
}

void draw() {
  background(255);
  translate(height/2, width/2);
  for(int i = 0; i < n; i++) {
    dots[i].show();
    
    pushMatrix();
    
    scale(1.04); // makes spirals
    rotate(radians(phi)); // produces concentric circles
    translate(10*sin(0), 10*cos(0)); // moves the origin of the circles
    funkyDots[i].show();
    
    popMatrix();
  }
  
  if(phi<5) {
    phi+=0.5;
  }
  
  if(theta < 360) {
    theta++;
  } else {
    theta = 0;
  }
  //delay(100);
}
