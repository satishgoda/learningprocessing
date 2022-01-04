// Based on 
// chp01_vectors/NOC_1_1_bouncingball_novectors/NOC_1_1_bouncingball_novectors.pde
// https://natureofcode.com/book/chapter-1-vectors


class PVector {
   float x;
   float y;
   
   PVector(float x_, float y_) {
      x = x_;
      y = y_;
   }
   
   void add(PVector v) {
      x = x + v.x;
      y = y + v.y;
   }
   
   void sub(PVector v) {
      x = x - v.x;
      y = y - v.y;
   }
   
   void div(float n) {
      x = x /n;
      y = y /n;
   }
   
   float mag() {
      return sqrt(x*x + y*y);
   }
   
   void norm() {
      float mag = mag();
      if (mag != 0) {
         div(mag);
      }
   }
}


float tx, ty = 0.0;
float hx, hy = 0.0;

PVector location;
PVector velocity;
PVector tail;
PVector head;


void mousePressed() {
   tail.x = mouseX;
   tail.y = mouseY;
   
   // tail.norm();
}

void mouseReleased() {
   head.x = mouseX;
   head.y = mouseY;
   
   location.x = head.x;
   location.y = head.y;
   
   //head.norm();
   
   head.sub(tail);
   //head.norm();
   
   head.div(24);
   
   velocity.x = head.x;
   velocity.y = head.y;
}


void setup() {
   size(screenWidth, screenHeight);
   
   location = new PVector(0, 0);
   velocity = new PVector(1, 1)
   tail = new PVector(0,0);
   head = new PVector(0,0);
}


void draw() {
   background(0);
   
   location.add(velocity);
   
   if(location.x < 0 || location.x > width) {
      velocity.x = velocity.x * -1;
   }
   
   if(location.y < 0 || location.y > height) {
      velocity.y = velocity.y * -1;
   }
   
   stroke(0);
   fill(175);
   
   ellipse(location.x, location.y, 16, 16);
   
}
