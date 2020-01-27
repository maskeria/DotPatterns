int n = 4000;
float rads = (radians(4));
int theta = 0;
Dot[] dots = new Dot[n];
Dot[] funkyDots = new Dot[n];

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
    
    rotate(radians(2));
    translate(10*sin(theta), 10*cos(theta));
    funkyDots[i].show();
    
    popMatrix();
  }
  
  if(theta < 360) {
    theta++;
  } else {
    theta = 0;
  }

}
