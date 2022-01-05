Ex_Follow1 exFollow1;


void setup() {
   canvasWidth = screenWidth;
   canvasHeight = screenHeight;
   
   exFollow1 = new Ex_Follow1(0, 0, 0, 350);
   
   exFollow1.setup(canvasWidth, canvasHeight);
   
   mouseX = width/2;
   mouseY = height/2;
}


void draw() {
   exFollow1.draw();
}
