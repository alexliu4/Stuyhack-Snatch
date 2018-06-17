Tiles[] list = new Tiles[144];
void setup() {
  size(1100, 700);
  PImage x = loadImage("images.jpeg");
  x.resize(width, height);
  background(x);
  for (int i=0; i < 144; i++) {
    list[i] = new Tiles((int)random(1,1050), (int)random(1,650));
  }
}

void draw() {
  int current = 0;
  for (int i=0; i < 144; i++) {
    list[i].appearBlank();
  }
  if (mousePressed){
    list[current].img1 = loadImage("./Tiles/A.png");
    list[current].img1.resize(50, 50);
    current++;
  }


}
