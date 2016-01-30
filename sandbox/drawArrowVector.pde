PVector mp = new PVector(0, 0);
PVector mm = new PVector(0, 0);

PVector ms = new PVector(0, 0);
PVector mv = new PVector(0, 0);

PVector ahL = new PVector(0, 0);
PVector ahR = new PVector(0, 0);

void setup() {
  size(500, 500);
  background(0);
  stroke(255);
}

void mousePressed() {
  mp.set(mouseX, mouseY);
}

void mouseDragged() {
  mm.set(mouseX, mouseY);
}

void mouseReleased() {
  mm.set(mouseX, mouseY);
  
  mv.set(0, 0);

  PVector.sub(mm, mp, mv);
  ms.set(mp);

  ahL = mv.copy();
  ahR = mv.copy();

  ahL.normalize();
  ahR.normalize();
  
  ahL.rotate(-75);
  ahR.rotate(75);
  
  ahL.mult(20);
  ahR.mult(20);
  
  mp.set(0, 0);
  mm.set(0, 0);
  
  redraw();
}


void draw() {
  //background(0);

  float dx = ms.x + mv.x;
  float dy = ms.y + mv.y;
  
  stroke(190);
  strokeWeight(1);
  
  line(ms.x, ms.y, dx, dy);
  
  strokeWeight(3);
  
  stroke(255, 0, 0);
  line(dx, dy, dx - ahL.x, dy - ahL.y);
  
  stroke(0, 255, 0);
  line(dx, dy, dx - ahR.x, dy - ahR.y);
}
