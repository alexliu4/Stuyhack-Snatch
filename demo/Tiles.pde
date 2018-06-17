class Tiles {

  int xCor;
  int yCor;
  PImage img1 = loadImage("./Tiles/blank.jpg");

  Tiles() {
    img1.resize(50, 50);
 }
 
 Tiles(int x, int y) {
    xCor = x;
    yCor = y;
    img1.resize(50, 50);
    // rotate(PI/random(1, 5));
 }
  
  void appearBlank() {
    image(img1, xCor, yCor);      
 }
 /*
 void tileValue(){
   Tiles[] types = new Tiles[26];
   for (int i=0; i < 26; i++) {
    types[i] = new Tiles();
    types[i].img1 =  loadImage("./Tiles/A.png");
   }
 }
 */
}
