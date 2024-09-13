PImage img;
color pickedColor;

void setup(){
  
  size(1440,960);

  img = loadImage("bosque.jpg");

  image(img, 0, 0, img.width/1.25, img.height/1.25);
  
  strokeWeight(10);
  
  pickedColor = color(255, 255, 255, 0);
  
}

void draw() {
  if (mousePressed && mouseButton == LEFT) {
    stroke(pickedColor);
    point(mouseX, mouseY);
  }
}

void mousePressed() {
  if (mouseButton == RIGHT){
    pickedColor = get(mouseX, mouseY);
  }
}
