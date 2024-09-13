PImage img;

void setup() {
  size(441, 640);

  img = loadImage("hummingbird.jpg");
  
  tint(255, 0, 255);
  
  translate(width / 2, height / 2);

  scale(-1,1);

  rotate(PI);

  imageMode(CENTER);

  image(img, 0, 0, img.width / 4, img.height / 4);
}
