float mplx = 0;
float mply = 0;

void setup() {
  size(300, 300);
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
  background(0);
  
  point(mplx, mply);
}

