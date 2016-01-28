PVector arrowHeadL = new PVector(0, 0);
PVector arrowHeadR = new PVector(0, 0);
PVector arrowHeadLtip = new PVector(0, 0);
PVector arrowHeadRtip = new PVector(0, 0);
  
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
  int L, R;
  
  L = -135;  // -x-y 
  R = -90; // -xy
  
  arrowHeadL.set(sin(radians(L)), cos(radians(L)));
  arrowHeadR.set(sin(radians(R)), cos(radians(R)));
  
  arrowHeadL.mult(18);
  arrowHeadR.mult(18);
  
  arrowHeadLtip.set(mplx, mply);
  arrowHeadRtip.set(mplx, mply);
  
  arrowHeadLtip.add(arrowHeadL);
  arrowHeadRtip.add(arrowHeadR);
  
  line(mplx, mply, arrowHeadLtip.x, arrowHeadLtip.y);
  line(mplx, mply, arrowHeadRtip.x, arrowHeadRtip.y);
}
