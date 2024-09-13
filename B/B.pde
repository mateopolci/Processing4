PImage img;
color pickedColor;
PGraphics canvas;
int cursorSize = 20;

void setup() {
  size(1440, 960);
  frameRate(60);
  img = loadImage("field.jpg");
  canvas = createGraphics(1440, 960);
  
  canvas.beginDraw();
  canvas.image(img, 0, 0, width, height);
  canvas.endDraw();
  
  strokeWeight(20);
  
  pickedColor = color(255, 255, 255, 0);
}

void draw() {
  image(canvas, 0, 0);
  
  if (mousePressed && mouseButton == LEFT) {
    canvas.beginDraw();
    canvas.stroke(pickedColor);
    canvas.strokeWeight(20);
    canvas.point(mouseX, mouseY);
    canvas.endDraw();
  }
  
  stroke(0);
  strokeWeight(2);
  fill(pickedColor);
  ellipse(mouseX, mouseY, cursorSize, cursorSize);
}

void mousePressed() {
  if (mouseButton == RIGHT) {
    int imgX = int(map(mouseX, 0, width, 0, img.width));
    int imgY = int(map(mouseY, 0, height, 0, img.height));
    
    pickedColor = img.get(imgX, imgY);
  }
}
