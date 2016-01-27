float mplx = 0;
float mply = 0;

void setup() {
  size(300, 300);
  
  background(0);
  stroke(255);
  
  mplx = width/2;
  mply = height/2;
}

void mousePressed() {
  mplx = mouseX;
  mply = mouseY;
  
  redraw();
}

void draw() {
  point(mplx, mply);
}
