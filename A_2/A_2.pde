
PImage img;

void setup(){
  size(441,640);

  img = loadImage("hummingbird.jpg");

  translate(width, 0);
  
  scale(-1,1);

  image(img, 0, 0, img.width/2, img.height/2);

}
