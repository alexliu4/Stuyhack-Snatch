void setup() {
  size(700, 700);
  ellipse(10, 10, 10, 10);
  PImage x = loadImage("images.jpeg");
  x.resize(width,height);
  background(x);
}
