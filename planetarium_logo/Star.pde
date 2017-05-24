//Loop som opdaterer og viser stjernerne
void stars() {
  pushMatrix();
  translate(width/2, height/2);
  for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
  popMatrix();
}

//Class med stars som indeholder variabler
class Star {

  float x;
  float y;
  float z;

  Star() { 
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
  }

//Void som opdaterer stjernerne
  void update() {
    z = z-2;
    if (z < 1) {
      z = width/2;
      x = random(-width/2, width/2);
      y = random(-height/2, height/2);
    }
  }

//Void som viser stjernerne
  void show() {
    fill(255, 255, 255, 100);
    noStroke();

    float sx = map(x / z, 0, 1, 0, width);
    float sy = map(y / z, 0, 1, 0, height);
    float r = map(z, 0, width, 16, 0);
    ellipse(sx, sy, r, r);
  }
}