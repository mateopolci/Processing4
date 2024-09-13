
PImage img;

void setup(){
  size(441,640);

  img = loadImage("hummingbird.jpg");

  tint(0, 150, 0);

  image(img, 0, 0, img.width/2, img.height/2);

}
