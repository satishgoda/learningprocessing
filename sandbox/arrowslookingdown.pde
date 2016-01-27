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
  
  arrowHeadL.set(sin(radians(135)), cos(radians(135)));
  arrowHeadR.set(sin(radians(225)), cos(radians(225)));
  
  arrowHeadL.mult(12);
  arrowHeadR.mult(12);
  
  arrowHeadLtip.set(mplx, mply);
  arrowHeadRtip.set(mplx, mply);
  
  arrowHeadLtip.add(arrowHeadL);
  arrowHeadRtip.add(arrowHeadR);
  
  line(mplx, mply-3, arrowHeadLtip.x, arrowHeadLtip.y);
  line(mplx, mply-3, arrowHeadRtip.x, arrowHeadRtip.y);
}
