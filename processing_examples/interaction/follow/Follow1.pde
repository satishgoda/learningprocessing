/**
* Follow 1  
* based on code from Keith Peters. 
* 
* A line segment is pushed and pulled by the cursor.
*/

class Ex_Follow1 {
   
   float x;
   float y;
   float angle1;
   float segLength;
   
   
   Ex_Follow1(float x_, float y_, float angle1_, float segLength_) {
      x = x_;
      y = y_;
      angle1 = angle1_;
      segLength = segLength_;
   }
   
   
   void setup(int canvasWidth, int canvasHeight) {
      size(canvasWidth, canvasHeight);
      strokeWeight(4);
      stroke(255, 100);
   }
   
   void draw() {
      background(0);
      
      float dx = mouseX - x;
      float dy = mouseY - y;
      
      angle1 = atan2(dy, dx);  
      
      x = mouseX - (cos(angle1) * segLength);
      y = mouseY - (sin(angle1) * segLength);
      
      line(x, y, mouseX, mouseY);
      //segment(x, y, angle1); 
      //ellipse(x, y, 20, 20);
      
      msg = "Mouse(" + mouseX + "," + mouseY + ")";
      text(msg, mouseX, mouseY);
      
      deg = degrees(angle1);
      if (deg < 0) {
         deg = 360 - abs(deg);         
      }
      msg = "Point(" + int(x) + "," + int(y) + ") " + deg;
      text(msg, x, y);
   }
   
   void segment(float x, float y, float a) {
      pushMatrix();
      translate(x, y);
      rotate(a);
      line(0, 0, segLength, 0);
      popMatrix();
   }
}
