Ex_Follow1 exFollow1 = new Ex_Follow1(1, 0, 0, 150);


void setup() {
   exFollow1.setup(screenWidth, screenHeight);

   exFollow1.x = width/2;

   mouseX = width/2;
   mouseY = height/2;
}


void draw() {
   exFollow1.draw();
}
