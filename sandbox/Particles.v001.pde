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


class Particle {
   PVector location;
   PVector velocity;
   boolean created;
   color c;
   
   Particle() {
      location = new PVector(0, 0);
      velocity = new PVector(0, 0);
      created = false;
      c = color(random(255), random(255), random(255));
   }
   
   void setLocation(PVector location_) {
      location.x = location_.x;
      location.y = location_.y;
   }
   
   void setVelocity(PVector velocity_) {
      velocity.x = velocity_.x;
      velocity.y = velocity_.y;
   }
   
   void setCreated() {
      created = true;
   }
   
   void update(int width, int height) {
      location.add(velocity);
      
      if(location.x < 0 || location.x > width) {
         velocity.x = velocity.x * -1;
      }
      
      if(location.y < 0 || location.y > height) {
         velocity.y = velocity.y * -1;
      }
   }
   
}


float tx, ty = 0.0;
float hx, hy = 0.0;

int count = 0;

Particle[] particles = new Particle[1000];

PVector tail;
PVector head;


void mousePressed() {
   tail.x = mouseX;
   tail.y = mouseY;
}


void mouseReleased() {
   PVector location = new PVector(0, 0);
   PVector velocity = new PVector(0, 0);
   
   head.x = mouseX;
   head.y = mouseY;
   
   location.x = head.x;
   location.y = head.y;
   
   head.sub(tail);
   
   head.div(24);
   
   velocity.x = head.x;
   velocity.y = head.y;
   Particle particle = new Particle();
   
   particle.setLocation(location);
   particle.setVelocity(velocity);
   particle.setCreated();
   
   particles[count] = particle;
   
   count = count + 1;
}


void setup() {
   size(screenWidth, screenHeight);
   
   tail = new PVector(0,0);
   head = new PVector(0,0);
}


void draw() {
   background(0);
   
   if (count > 0) {
      for (int i = 0; i < count; i++) {
         particle = particles[i];
         if (particle.created) {
            particle.update(width, height);
            
            stroke(0);
            fill(particle.c);
            
            ellipse(particle.location.x, particle.location.y, 16, 16);
         }
      }
      
   }
}   
