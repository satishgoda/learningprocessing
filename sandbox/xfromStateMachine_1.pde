void setup() {
  size(500, 500);
  stroke(255);
}

void draw() {
  background(0);
  
  pushMatrix();
    fill(127);
    translate(150, 150);
    rotate(radians(45));
    scale(1.5, 1.5);
    rect(-50, -50, 100, 100);
  popMatrix();
  
  pushMatrix();
    fill(10);
    translate(100, 100);
    rect(0, 0, 100, 100);
  popMatrix();
  
  pushMatrix();
    strokeWeight(4);
    translate(0, 25);
    rotate(radians(90));
    scale(1);
    line(0, 0, 100, 0);
  popMatrix();
}
