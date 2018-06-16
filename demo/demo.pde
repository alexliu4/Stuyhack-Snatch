void setup() {
  size(1100, 800);
  ellipse(10, 10, 10, 10);
  PImage x = loadImage("images.jpeg");
  x.resize(width,height);
  background(x);
  Tiles A = new Tiles();
  A.appear();
}
