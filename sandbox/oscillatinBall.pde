// Nature of Code : chp03_oscillation/ExtraOscillatingUpAndDown/ExtraOscillatingUpAndDown.pde

float angle = -90;
float x = 0;

void setup() {
   size(screenWidth, screenHeight); 
}

void draw() {
   background(255);
   
   float x = 50 * cos(angle);
   float y = 100 * sin(angle);
   angle += 0.02;
   
   fill(127);
   translate(width/2,height/2);
   line(0,0,x,y);
   ellipse(x,y,16,16);
}
