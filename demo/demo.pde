Tiles[] list = new Tiles[143];
String[] types = new String[26];
int current = 0;

//sets up background and tiles
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

//makes the tiles appear
void draw() {
  for (int i=0; i < 143; i++) {
    list[i].appearBlank();
  }
}

//randomizes value for tiles
 void tileValue(){
   for (int i=0; i < 26; i++) {
    types[i] = new String();
    types[1] =  "./Tiles/A.png";
    types[2] =  "./Tiles/B.png";
    types[3] =  "./Tiles/C.png";
    types[4] =  "./Tiles/D.png";
    types[5] =  "./Tiles/E.jpeg";
    types[6] =  "./Tiles/F.png";
    types[7] =  "./Tiles/G.jpeg";
    types[8] =  "./Tiles/H.png";
    types[9] =  "./Tiles/I.jpg";
    types[10] =  "./Tiles/J.jpeg";
    types[11] =  "./Tiles/K.png";
    types[12] =  "./Tiles/L.jpeg";
    types[13] =  "./Tiles/M.png";
    types[14] =  "./Tiles/N.jpg";
    types[15] =  "./Tiles/O.png";
    types[16] =  "./Tiles/P.jpg";
    types[17] =  "./Tiles/Q.png";
    types[18] =  "./Tiles/R.jpg";
    types[19] =  "./Tiles/S.png";
    types[20] =  "./Tiles/T.png";
    types[21] =  "./Tiles/U.png";
    types[22] =  "./Tiles/V.png";
    types[23] =  "./Tiles/W.png";
    types[24] =  "./Tiles/X.png";
    types[25] =  "./Tiles/Y.png";
    types[26] =  "./Tiles/Z.jpeg";
    
   }
 }


//tiles turn with each click
void mouseReleased(){
    list[current].img1 = loadImage(types[(int)random(27)]);
    list[current].img1.resize(50, 50);
    current++;
  }
