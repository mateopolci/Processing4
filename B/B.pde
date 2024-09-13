PImage img;
color pickedColor;

void setup(){
  
  size(1440,960);

  frameRate(60);

  img = loadImage("field.jpg");

  image(img, 0, 0, img.width/2.9, img.height/2.9);
  
  strokeWeight(20);
  
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
