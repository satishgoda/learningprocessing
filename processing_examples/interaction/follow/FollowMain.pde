Ex_Follow1 exFollow1 = new Ex_Follow1(0, 100, 0, 50);


void setup() {
   exFollow1.setup(screenWidth, screenHeight);
	mouseX = width/2;
	mouseY = height/2;
}


void draw() {
   exFollow1.draw();
}
