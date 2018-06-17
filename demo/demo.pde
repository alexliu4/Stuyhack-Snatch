Tiles[] list = new Tiles[143];
int current = 0;

void setup() {
  size(1100, 700);
  PImage x = loadImage("images.jpeg");
  x.resize(width, height);
  background(x);
  for (int i=0; i < 143; ) {
    for (int row = 50; row < 1050; row+= 55 ){
      for (int col = 50; col < 650; col+=55){
        if (i < 143){
          list[i] = new Tiles( row, col);
           }
          i++;
      }
    }
  }
}

void draw() {
  for (int i=0; i < 143; i++) {
    list[i].appearBlank();
  }
}

void mouseReleased(){
    list[current].img1 = loadImage("./Tiles/A.png");
    list[current].img1.resize(50, 50);
    current++;
  }
